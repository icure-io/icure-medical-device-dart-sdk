//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:icure_dart_sdk/api.dart';
import 'package:icure_dart_sdk/extended_api/data_owner_resolver.dart';
import 'package:icure_medical_device_dart_sdk/api.dart';
import 'package:icure_medical_device_dart_sdk/utils/functional_utils.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import 'address.dart';
import 'code_stub_coding_reference.dart';
import 'delegation.dart';
import 'identifier.dart';
import 'partnership.dart';
import 'patient_healthcare_party.dart';
import 'person_name.dart';
import 'property.dart';

final uuid = Uuid();

extension DeviceDtoMapper on DeviceDto {
  MedicalDevice toMedicalDevice() => MedicalDevice(
      id: this.id,
      labels: this.tags.map((it) => it.toCodingReference()).toSet(),
      codes: this.codes.map((it) => it.toCodingReference()).toSet(),
      properties: this.properties.map((it) => it.toProperty()).toSet(),
      rev: this.rev,
      deletionDate: this.deletionDate,
      name: this.name,
      externalId: this.externalId,
      parentId: this.parentId,
      picture: this.picture,
      type: this.type,
      brand: this.brand,
      model: this.model,
      serialNumber: this.serialNumber,
      systemMetaData: SystemMetaDataOwner(
        publicKey: this.publicKey,
        hcPartyKeys: this.hcPartyKeys,
        privateKeyShamirPartitions: this.privateKeyShamirPartitions,
        aesExchangeKeys: this.aesExchangeKeys,
        transferKeys: this.transferKeys,
      ));
}

extension MedicalDeviceMapper on MedicalDevice {
  DeviceDto toDeviceDto() => DeviceDto(
    id: this.id?.also((it) {
      if (!Uuid.isValidUUID(fromString: it)) {
        throw FormatException("Invalid id, id must be a valid UUID");
      }
    }) ??
        uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
    tags: this.labels.map((it) => it.toCodeStubDto()).toSet(),
    codes: this.codes.map((it) => it.toCodeStubDto()).toSet(),
    properties: this.properties.map((it) => it.toPropertyStubDto()).toSet(),
    rev: this.rev,
    deletionDate: this.deletionDate,
    name: this.name,
    externalId: this.externalId,
    parentId: this.parentId,
    picture: this.picture,
    type: this.type,
    brand: this.brand,
    model: this.model,
    serialNumber: this.serialNumber,
    publicKey: this.systemMetaData?.publicKey,
    hcPartyKeys: this.systemMetaData?.hcPartyKeys ?? const {},
    privateKeyShamirPartitions: this.systemMetaData?.privateKeyShamirPartitions ?? const {},
    aesExchangeKeys: this.systemMetaData?.aesExchangeKeys ?? const {},
    transferKeys: this.systemMetaData?.transferKeys ?? const {},
  );

  DataOwnerDto toDataOwnerDto() => DataOwnerDto(DataOwnerType.device, this.id!, this.systemMetaData?.hcPartyKeys ?? const {},
      publicKey: this.systemMetaData?.publicKey!, parentId: this.parentId, rev: this.rev);
}
