@Timeout(Duration(hours: 1))
import 'dart:io';

import 'package:icure_medical_device_dart_sdk/api.dart';
import "package:test/test.dart";
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'package:icure_dart_sdk/api.dart' as base_api;

import '../utils/test_utils_backend.dart';

final Uuid uuid = Uuid();
const int DB_PORT = 15984;
const int AS_PORT = 16044;
const adminHash = "{R0DLKxxRDxdtpfY542gOUZbvWkfv1KWO9QOi9yvr/2c=}39a484cbf9057072623177422172e8a173bd826d68a2b12fa8e36ff94a44a0d7";
// final TestBackend backend = DockerTestBackend.getInstance(DB_PORT, AS_PORT, "icure", "icure", "admin", "admin");
final TestBackend backend = RemoteTestBackend.getInstance(Platform.environment["KRAKEN_USR"]!, Platform.environment["KRAKEN_PWD"]!);

void main() {

  final userLogin = "hcp-${uuid.v4(options: {'rng': UuidUtil.cryptoRNG})}-delegate";

  HealthcareProfessional? delegateHcp;
  String hcpPrivateKey = "";
  MedTechApi? api;

  HealthcareProfessional getHcp() {
    final hcpKeys = generateRandomPrivateAndPublicKeyPair();
    return HealthcareProfessional(
        id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
        name: 'Wick',
        firstName: 'John',
        gender: HealthcareProfessionalGenderEnum.male,
        systemMetaData: new SystemMetaDataOwner(
          publicKey: hcpKeys.item2
        )
    );
  }

    setUpAll(() async {
      await backend.init();

      final client = base_api.ApiClient.basic(backend.iCureURL, backend.iCureUser, backend.iCurePwd);
      final hcpKeys = generateRandomPrivateAndPublicKeyPair();
      final initialHcp = await base_api.HealthcarePartyApi(client).createHealthcareParty(
          new base_api.HealthcarePartyDto(id: uuid.v4(), publicKey: hcpKeys.item2, firstName: "test", lastName: "test")
      );
      assert(initialHcp != null);
      final tmpUserLogin = "hcp-${uuid.v4(options: {'rng': UuidUtil.cryptoRNG})}-delegate";
      final user = await base_api.UserApi(client).createUser(
          new base_api.UserDto(
              id: "user-${uuid.v4(options: {'rng': UuidUtil.cryptoRNG})}-hcp",
              login: tmpUserLogin,
              status: base_api.UserDtoStatusEnum.ACTIVE,
              passwordHash: adminHash,
              healthcarePartyId: initialHcp!.id
          )
      );

      expect(user != null, true);

      final initialApi = await MedTechApiBuilder.newBuilder()
          .withICureBasePath(backend.iCureURL)
          .withUserName(tmpUserLogin)
          .withPassword("admin")
          .addKeyPair(initialHcp.id, hcpKeys.item1.keyFromHexString())
          .build();

      final professionalKeys = generateRandomPrivateAndPublicKeyPair();
      hcpPrivateKey = professionalKeys.item1;
      final hcpToAdd = new HealthcareProfessional(
          firstName: "Svlad",
          lastName: "Cjelli",
          systemMetaData: new SystemMetaDataOwner(
              publicKey: professionalKeys.item2
          )
      );

      delegateHcp = await initialApi.healthcareProfessionalApi.createOrModifyHealthcareProfessional(hcpToAdd);

      final hcpUser = await initialApi.userApi.createOrModifyUser(
          new User(
              id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
              login: userLogin,
              status: UserStatus.ACTIVE,
              passwordHash: adminHash,
              healthcarePartyId: delegateHcp!.id
          )
      );

      api = await MedTechApiBuilder.newBuilder()
          .withICureBasePath(backend.iCureURL)
          .withUserName(userLogin)
          .withPassword("admin")
          .addKeyPair(delegateHcp!.id!, hcpPrivateKey.keyFromHexString())
          .build();

      print("Successfully set up test backend!");
    });

    group('tests for HealthcareProfessionalApi', () {
      test('test createOrModifyHealthcareProfessional', () async {
        // Init

        final HealthcareProfessional healthcareProfessional = getHcp();

        // When
        final HealthcareProfessional? createdHcp = await api!.healthcareProfessionalApi.createOrModifyHealthcareProfessional(healthcareProfessional);

        // Then
        expect(createdHcp!.id, healthcareProfessional.id);
        expect(createdHcp.name, healthcareProfessional.name);
        expect(createdHcp.firstName, healthcareProfessional.firstName);
        expect(createdHcp.gender, healthcareProfessional.gender);
        expect(createdHcp.systemMetaData!.publicKey, createdHcp.systemMetaData!.publicKey);
      });

      test('test getHealthcareProfessional', () async {
        // Init
        expect(api != null, true);
        final HealthcareProfessional healthcareProfessional = getHcp();

        // When
        final HealthcareProfessional? createdHcp = await api!.healthcareProfessionalApi.createOrModifyHealthcareProfessional(healthcareProfessional);
        final HealthcareProfessional? gotHcp = await api!.healthcareProfessionalApi.getHealthcareProfessional(createdHcp!.id!);

        // Then
        expect(createdHcp.id, gotHcp!.id);
        expect(createdHcp.rev, gotHcp.rev);
        expect(createdHcp.name, gotHcp.name);
        expect(createdHcp.firstName, gotHcp.firstName);
        expect(createdHcp.systemMetaData!.publicKey, gotHcp.systemMetaData!.publicKey);
      });
    });

    test('test createOrModifyHealthcareProfessional UPDATE', () async {
      // Init
      expect(api != null, true);
      final updateFirstname = "Johnny";
      final HealthcareProfessional healthcareProfessional = getHcp();

      // When
      final HealthcareProfessional? createdHcp = await api!.healthcareProfessionalApi.createOrModifyHealthcareProfessional(healthcareProfessional);
      createdHcp!.firstName = updateFirstname;
      final HealthcareProfessional? updatedHcp = await api!.healthcareProfessionalApi.createOrModifyHealthcareProfessional(createdHcp);

      // Then
      expect(createdHcp.id, updatedHcp!.id);
      assert(healthcareProfessional.firstName != updatedHcp.firstName);
      assert(createdHcp.rev != updatedHcp.rev);
      expect(createdHcp.name, updatedHcp.name);
      expect(createdHcp.systemMetaData!.publicKey, updatedHcp.systemMetaData!.publicKey);
    });

    test('test deleteHealthcareProfessional', () async {
      // Init
      expect(api != null, true);
      final HealthcareProfessional healthcareProfessional = getHcp();

      // When
      final HealthcareProfessional? createdHcp = await api!.healthcareProfessionalApi.createOrModifyHealthcareProfessional(healthcareProfessional);
      final String? deletedHcpRev = await api!.healthcareProfessionalApi.deleteHealthcareProfessional(createdHcp!.id!);

      // Then
      assert(deletedHcpRev != null);
    });
}
