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
import 'package:icure_medical_device_dart_sdk/utils/iterable_utils.dart';
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

extension PatientDtoMapper on DecryptedPatientDto {
  Patient toPatient() =>
      Patient(
          id: this.id,
          identifiers: this.identifier.map((it) => it.toIdentifier()).toList(),
          labels: this.tags.map((it) => it.toCodingReference()).toSet(),
          codes: this.codes.map((it) => it.toCodingReference()).toSet(),
          names: this.names.map((it) => it.toPersonName()).toList(),
          languages: this.languages,
          addresses: this.addresses.map((it) => it.toAddress()).toList(),
          mergedIds: this.mergedIds,
          active: this.active,
          deactivationReason: this.deactivationReason.toDeactivationReason(),
          partnerships: this.partnerships.map((it) => it.toPartnership()).toList(),
          patientHealthCareParties: this.patientHealthCareParties.map((it) => it.toPatientHealthCareParty()).toList(),
          patientProfessions: this.patientProfessions.map((it) => it.toCodingReference()).toList(),
          parameters: this.parameters,
          properties: this.properties.map((it) => it.toProperty()).toSet(),
          rev: this.rev,
          created: this.created,
          modified: this.modified,
          author: this.author,
          responsible: this.responsible,
          endOfLife: this.endOfLife,
          deletionDate: this.deletionDate,
          firstName: this.firstName,
          lastName: this.lastName,
          companyName: this.companyName,
          civility: this.civility,
          gender: this.gender?.toGender(),
          birthSex: this.birthSex?.toBirthSex(),
          mergeToPatientId: this.mergeToPatientId,
          alias: this.alias,
          ssin: this.ssin,
          maidenName: this.maidenName,
          spouseName: this.spouseName,
          partnerName: this.partnerName,
          personalStatus: this.personalStatus?.toPersonalStatus(),
          dateOfBirth: this.dateOfBirth,
          dateOfDeath: this.dateOfDeath,
          placeOfBirth: this.placeOfBirth,
          placeOfDeath: this.placeOfDeath,
          deceased: this.deceased,
          education: this.education,
          profession: this.profession,
          note: this.note,
          administrativeNote: this.administrativeNote,
          nationality: this.nationality,
          race: this.race,
          ethnicity: this.ethnicity,
          picture: this.picture,
          externalId: this.externalId,
          systemMetaData: SystemMetaDataOwnerEncrypted(
            publicKey: this.publicKey,
            hcPartyKeys: this.hcPartyKeys,
            privateKeyShamirPartitions: this.privateKeyShamirPartitions,
            secretForeignKeys: this.secretForeignKeys.toList(),
            cryptedForeignKeys: this.cryptedForeignKeys.map((k, v) => MapEntry(k, v.map((it) => it.toDelegation()).toList())) ,
            delegations: this.delegations.map((k, v) => MapEntry(k, v.map((it) => it.toDelegation()).toList())),
            encryptionKeys: this.encryptionKeys.map((k, v) => MapEntry(k, v.map((it) => it.toDelegation()).toList())),
            aesExchangeKeys: this.aesExchangeKeys,
            transferKeys: this.transferKeys,
          )
      );
}
extension PatientDtoDeactivationReasonEnumMapper on PatientDtoDeactivationReasonEnum {
  PatientDeactivationReasonEnum toDeactivationReason() => PatientDeactivationReasonEnum.values.firstWhere((it) => it.value == this.value, orElse: () => PatientDeactivationReasonEnum.none);
}
extension PatientDtoGenderEnumMapper on PatientDtoGenderEnum {
  PatientGenderEnum toGender() => PatientGenderEnum.values.firstWhere((it) => it.value == this.value);
}
extension PatientDtoBirthSexEnumMapper on PatientDtoBirthSexEnum {
  PatientBirthSexEnum toBirthSex() => PatientBirthSexEnum.values.firstWhere((it) => it.value == this.value);
}
extension PatientDtoPersonalStatusEnumMapper on PatientDtoPersonalStatusEnum {
  PatientPersonalStatusEnum toPersonalStatus() => PatientPersonalStatusEnum.values.firstWhere((it) => it.value == this.value);
}

extension PatientMapper on Patient {
  DecryptedPatientDto toPatientDto() =>
      DecryptedPatientDto(
        id: this.id?.also((it) {
          if (!Uuid.isValidUUID(fromString: it)) {
            throw FormatException("Invalid id, id must be a valid UUID");
          }
        }) ?? uuid.v4(options: {'rng': UuidUtil.cryptoRNG}),
        identifier: this.identifiers.map((it) => it.toIdentifierDto()).toList(),
        tags: this.labels.map((it) => it.toCodeStubDto()).toSet(),
        codes: this.codes.map((it) => it.toCodeStubDto()).toSet(),
        names: this.names.map((it) => it.toPersonNameDto()).toList(),
        languages: this.languages,
        addresses: this.addresses.map((it) => it.toAddressDto()).toList(),
        mergedIds: this.mergedIds,
        active: this.active,
        deactivationReason: this.deactivationReason.toDeactivationReason(),
        partnerships: this.partnerships.map((it) => it.toPartnershipDto()).toList(),
        patientHealthCareParties: this.patientHealthCareParties.map((it) => it.toPatientHealthCarePartyDto()).toList(),
        patientProfessions: this.patientProfessions.map((it) => it.toCodeStubDto()).toList(),
        parameters: this.parameters,
        properties: this.properties.map((it) => it.toPropertyStubDto()).toSet(),
        rev: this.rev,
        created: this.created,
        modified: this.modified,
        author: this.author,
        responsible: this.responsible,
        endOfLife: this.endOfLife,
        deletionDate: this.deletionDate,
        firstName: this.firstName,
        lastName: this.lastName,
        companyName: this.companyName,
        civility: this.civility,
        gender: this.gender?.toGender(),
        birthSex: this.birthSex?.toBirthSex(),
        mergeToPatientId: this.mergeToPatientId,
        alias: this.alias,
        ssin: this.ssin,
        maidenName: this.maidenName,
        spouseName: this.spouseName,
        partnerName: this.partnerName,
        personalStatus: this.personalStatus?.toPersonalStatus(),
        dateOfBirth: this.dateOfBirth,
        dateOfDeath: this.dateOfDeath,
        placeOfBirth: this.placeOfBirth,
        placeOfDeath: this.placeOfDeath,
        deceased: this.deceased,
        education: this.education,
        profession: this.profession,
        note: this.note,
        administrativeNote: this.administrativeNote,
        nationality: this.nationality,
        race: this.race,
        ethnicity: this.ethnicity,
        picture: this.picture,
        externalId: this.externalId,
        publicKey: this.systemMetaData?.publicKey,
        hcPartyKeys: this.systemMetaData?.hcPartyKeys ?? const {},
        privateKeyShamirPartitions: this.systemMetaData?.privateKeyShamirPartitions ?? const {},
        secretForeignKeys: this.systemMetaData?.secretForeignKeys.toSet() ?? {},
        cryptedForeignKeys:
            this.systemMetaData?.cryptedForeignKeys.map((k, v) => MapEntry(k, v.map((it) => it.toDelegationDto()).toSet())) ?? const {},
        delegations: this.systemMetaData?.delegations.map((k, v) => MapEntry(k, v.map((it) => it.toDelegationDto()).toSet())) ?? const {},
        encryptionKeys: this.systemMetaData?.encryptionKeys.map((k, v) => MapEntry(k, v.map((it) => it.toDelegationDto()).toSet())) ?? const {},
        aesExchangeKeys: this.systemMetaData?.aesExchangeKeys ?? const {},
        transferKeys: this.systemMetaData?.transferKeys ?? const {},
      );

  DataOwnerDto toDataOwnerDto() =>
      DataOwnerDto(DataOwnerType.patient, this.id!, this.systemMetaData?.hcPartyKeys ?? const {}, publicKey: this.systemMetaData?.publicKey, rev: this.rev);
}

extension PatientDeactivationReasonEnumMapper on PatientDeactivationReasonEnum {
  PatientDtoDeactivationReasonEnum toDeactivationReason() =>
      PatientDtoDeactivationReasonEnum.values.findFirst((it) => it.value == this.value) ?? PatientDtoDeactivationReasonEnum.none;
}
extension PatientGenderEnumMapper on PatientGenderEnum {
  PatientDtoGenderEnum toGender() => PatientDtoGenderEnum.values.firstWhere((it) => it.value == this.value);
}
extension PatientBirthSexEnumMapper on PatientBirthSexEnum {
  PatientDtoBirthSexEnum toBirthSex() => PatientDtoBirthSexEnum.values.firstWhere((it) => it.value == this.value);
}
extension PatientPersonalStatusEnumMapper on PatientPersonalStatusEnum {
  PatientDtoPersonalStatusEnum toPersonalStatus() => PatientDtoPersonalStatusEnum.values.firstWhere((it) => it.value == this.value);
}
