@Timeout(Duration(hours: 1))
import 'dart:io';

import 'package:icure_medical_device_dart_sdk/api.dart';
import "package:test/test.dart";
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import '../utils/test_utils_backend.dart';
import 'package:icure_dart_sdk/api.dart' as base_api;

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

  MedicalDevice getMedicalDevice() {
    final hcpKeys = generateRandomPrivateAndPublicKeyPair();
    return MedicalDevice(
      id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
      brand: 'Apple',
      model: '13 Pro',
      type: 'iPhone',
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

  group('tests for MedicalDeviceApi', () {
    test('test createDevice CREATE', () async {
      // Init
      expect(api != null, true);
      final MedicalDevice device = getMedicalDevice();

      // When
      final MedicalDevice? createdDevice = await api!.medicalDeviceApi.createOrModifyMedicalDevice(device);

      // Then
      expect(createdDevice!.id, device.id);
      expect(createdDevice.brand, device.brand);
      expect(createdDevice.type, device.type);
      expect(createdDevice.model, device.model);
      expect(createdDevice.systemMetaData!.publicKey, device.systemMetaData!.publicKey);
    });

    test('test getDevice', () async {
      // Init
      expect(api != null, true);
      final MedicalDevice device = getMedicalDevice();

      // When
      final MedicalDevice? createdDevice = await api!.medicalDeviceApi.createOrModifyMedicalDevice(device);
      final MedicalDevice? gotDevice = await api!.medicalDeviceApi.getMedicalDevice(createdDevice!.id!);

      // Then
      expect(createdDevice.id, gotDevice!.id);
      expect(createdDevice.brand, gotDevice.brand);
      expect(createdDevice.type, gotDevice.type);
      expect(createdDevice.model, gotDevice.model);
      expect(createdDevice.systemMetaData!.publicKey, gotDevice.systemMetaData!.publicKey);
    });

    test('test createDevice UPDATE', () async {
      // Init
      expect(api != null, true);
      final updateModel = "14";

      final MedicalDevice device = MedicalDevice(
          id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
          brand: 'Apple',
          model: '13 Pro',
          type: 'iPhone'
      );

      // When
      final MedicalDevice? createdDevice = await api!.medicalDeviceApi.createOrModifyMedicalDevice(device);
      createdDevice!.model = updateModel;
      final MedicalDevice? updatedDevice = await api!.medicalDeviceApi.createOrModifyMedicalDevice(createdDevice);

      // Then
      expect(createdDevice.id, device.id);
      expect(createdDevice.brand, device.brand);
      expect(createdDevice.type, device.type);
      assert(device.model != updatedDevice!.model);
      assert(createdDevice.rev != updatedDevice!.rev);
      expect(createdDevice.model, updateModel);
      expect(createdDevice.systemMetaData!.publicKey, updatedDevice!.systemMetaData!.publicKey);
    });

    test('test deleteDevice', () async {
      // Init
      expect(api != null, true);
      final MedicalDevice device = getMedicalDevice();

      // When
      final MedicalDevice? createdDevice = await api!.medicalDeviceApi.createOrModifyMedicalDevice(device);
      final String? deletedDeviceRev = await api!.medicalDeviceApi.deleteMedicalDevice(createdDevice!.id!);

      // Then
      assert(deletedDeviceRev != null);
    });
  });
}
