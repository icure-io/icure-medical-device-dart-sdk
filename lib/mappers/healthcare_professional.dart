//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:icure_dart_sdk/api.dart';
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

extension HealthcarePartyDtoMapper on HealthcarePartyDto {
  HealthcareProfessional toHealthcareProfessional() => HealthcareProfessional(
      id: this.id,
      names: this.names.map((it) => it.toPersonName()).toList(),
      addresses: this.addresses.map((it) => it.toAddress()).toList(),
      languages: this.languages,
      specialityCodes: this.specialityCodes.map((it) => it.toCodingReference()).toSet(),
      properties: this.properties.map((it) => it.toProperty()).toSet(),
      rev: this.rev,
      deletionDate: this.deletionDate,
      name: this.name,
      lastName: this.lastName,
      firstName: this.firstName,
      gender: this.gender?.toHealthcareProfessionalGender(),
      civility: this.civility,
      speciality: this.speciality,
      parentId: this.parentId,
      picture: this.picture,
      notes: this.notes,
      systemMetaData: SystemMetaDataOwner(
        publicKey: this.publicKey,
        hcPartyKeys: this.hcPartyKeys,
        privateKeyShamirPartitions: this.privateKeyShamirPartitions,
        aesExchangeKeys: this.aesExchangeKeys,
        transferKeys: this.transferKeys,
      ));
}

extension HealthcarePartyDtoGenderEnumMapper on HealthcarePartyDtoGenderEnum {
  HealthcareProfessionalGenderEnum toHealthcareProfessionalGender() =>
      HealthcareProfessionalGenderEnum.values.firstWhere((it) => it.value == this.value);
}

extension HealthcareProfessionalMapper on HealthcareProfessional {
  HealthcarePartyDto toHealthcarePartyDto() => HealthcarePartyDto(
    id: this.id?.also((it) {
      if (!Uuid.isValidUUID(fromString: it)) {
        throw FormatException("Invalid id, id must be a valid UUID");
      }
    }) ??
        uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
    names: this.names.map((it) => it.toPersonNameDto()).toList(),
    addresses: this.addresses.map((it) => it.toAddressDto()).toList(),
    languages: this.languages,
    specialityCodes: this.specialityCodes.map((it) => it.toCodeStubDto()).toSet(),
    properties: this.properties.map((it) => it.toPropertyStubDto()).toSet(),
    rev: this.rev,
    deletionDate: this.deletionDate,
    name: this.name,
    lastName: this.lastName,
    firstName: this.firstName,
    gender: this.gender?.toHealthcarePartyDtoGender(),
    civility: this.civility,
    speciality: this.speciality,
    parentId: this.parentId,
    picture: this.picture,
    notes: this.notes,
    hcPartyKeys: this.systemMetaData?.hcPartyKeys ?? const {},
    publicKey: this.systemMetaData?.publicKey,
    privateKeyShamirPartitions: this.systemMetaData?.privateKeyShamirPartitions ?? const {},
    aesExchangeKeys: this.systemMetaData?.aesExchangeKeys ?? const {},
    transferKeys: this.systemMetaData?.transferKeys ?? const {},
  );
}

extension HealthcareProfessionalGenderEnumMapper on HealthcareProfessionalGenderEnum {
  HealthcarePartyDtoGenderEnum toHealthcarePartyDtoGender() => HealthcarePartyDtoGenderEnum.values.firstWhere((it) => it.value == this.value);
}
