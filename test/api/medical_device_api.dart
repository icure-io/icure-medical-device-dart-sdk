@Timeout(Duration(hours: 1))
import 'package:icure_medical_device_dart_sdk/api.dart';
import "package:test/test.dart";
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import '../utils/test_utils.dart';

void main() {
  final Uuid uuid = Uuid();

  Future<MedTechApi> medtechApi() async {
    return await TestUtils.medtechApi();
  }

  MedicalDevice getMedicalDevice() =>
      MedicalDevice(id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}), brand: 'Apple', model: '13 Pro', type: 'iPhone');

  group('tests for MedicalDeviceApi', () {
    test('test createDevice CREATE', () async {
      // Init
      final MedTechApi api = await medtechApi();
      final MedicalDevice device = getMedicalDevice();

      // When
      final MedicalDevice? createdDevice = await api.medicalDeviceApi.createOrModifyMedicalDevice(device);

      // Then
      expect(createdDevice!.id, device.id);
      expect(createdDevice.brand, device.brand);
      expect(createdDevice.type, device.type);
      expect(createdDevice.model, device.model);
    });

    test('test getDevice', () async {
      // Init
      final MedTechApi api = await medtechApi();
      final MedicalDevice device = getMedicalDevice();

      // When
      final MedicalDevice? createdDevice = await api.medicalDeviceApi.createOrModifyMedicalDevice(device);
      final MedicalDevice? gotDevice = await api.medicalDeviceApi.getMedicalDevice(createdDevice!.id!);

      // Then
      expect(createdDevice.id, gotDevice!.id);
      expect(createdDevice.brand, gotDevice.brand);
      expect(createdDevice.type, gotDevice.type);
      expect(createdDevice.model, gotDevice.model);
    });

    test('test createDevice UPDATE', () async {
      // Init
      final MedTechApi api = await medtechApi();
      final updateModel = "14";

      final MedicalDevice device = MedicalDevice(
          id: uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
          brand: 'Apple',
          model: '13 Pro',
          type: 'iPhone'
      );

      // When
      final MedicalDevice? createdDevice = await api.medicalDeviceApi.createOrModifyMedicalDevice(device);
      createdDevice!.model = updateModel;
      final MedicalDevice? updatedDevice = await api.medicalDeviceApi.createOrModifyMedicalDevice(createdDevice);

      // Then
      expect(createdDevice.id, device.id);
      expect(createdDevice.brand, device.brand);
      expect(createdDevice.type, device.type);
      assert(device.model != updatedDevice!.model);
      assert(createdDevice.rev != updatedDevice!.rev);
      expect(createdDevice.model, updateModel);
    });

    test('test deleteDevice', () async {
      // Init
      final MedTechApi api = await medtechApi();
      final MedicalDevice device = getMedicalDevice();

      // When
      final MedicalDevice? createdDevice = await api.medicalDeviceApi.createOrModifyMedicalDevice(device);
      final String? deletedDeviceRev = await api.medicalDeviceApi.deleteMedicalDevice(createdDevice!.id!);

      // Then
      assert(deletedDeviceRev != null);
    });
  });
}
