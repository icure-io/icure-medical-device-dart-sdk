//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_medical_device_dart_sdk.api;

class Patient {

  /// Returns a new [Patient] instance.
  Patient({
    this.id,
    this.rev,
    this.identifiers = const [],
    this.created,
    this.modified,
    this.author,
    this.responsible,
    this.labels = const {},
    this.codes = const {},
    this.endOfLife,
    this.deletionDate,
    this.firstName,
    this.lastName,
    this.names = const [],
    this.companyName,
    this.languages = const [],
    this.addresses = const [],
    this.civility,
    this.gender,
    this.birthSex,
    this.mergeToPatientId,
    this.mergedIds = const {},
    this.alias,
    this.active = true,
    this.deactivationReason = const PatientDeactivationReasonEnum._('DeactivationReason.none'),
    this.ssin,
    this.maidenName,
    this.spouseName,
    this.partnerName,
    this.personalStatus,
    this.dateOfBirth,
    this.dateOfDeath,
    this.placeOfBirth,
    this.placeOfDeath,
    this.deceased,
    this.education,
    this.profession,
    this.note,
    this.administrativeNote,
    this.nationality,
    this.race,
    this.ethnicity,
    this.picture,
    this.externalId,
    this.partnerships = const [],
    this.patientHealthCareParties = const [],
    this.patientProfessions = const [],
    this.parameters = const {},
    this.properties = const {},
    this.systemMetaData,
  });

  /// the Id of the patient. We encourage using either a v4 UUID or a HL7 Id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// the revision of the patient in the database, used for conflict management / optimistic locking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// Typically used for business / client identifiers. An identifier should identify a patient uniquely and unambiguously. However, iCure can't guarantee the uniqueness of those identifiers : This is something you need to take care of.
  List<Identifier> identifiers;

  /// the creation date of the patient (encoded as epoch).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// the last modification date of the patient (encoded as epoch).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modified;

  /// The id of the [User] that created this patient. When creating the patient, this field will be filled automatically by the current user id if not provided.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// The id of the data owner that is responsible of this patient. When creating the patient, will be filled automatically by the current user data owner id ([HealthcareProfessional], [Patient] or [MedicalDevice]) if missing
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responsible;

  /// A label is an item from a codification system that qualifies a patient as being member of a certain class, whatever the value it might have taken. If the label qualifies the content of a field, it means that whatever the content of the field, the label will always apply. LOINC is a codification system typically used for labels.
  Set<CodingReference> labels;

  /// A code is an item from a codification system that qualifies the content of this patient.
  Set<CodingReference> codes;

  /// Soft delete (unix epoch in ms) timestamp of the patient
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfLife;

  /// the soft delete timestamp. When a patient is ”deleted“, this is set to a non null value: the moment of the deletion
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  /// the firstname (name) of the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// the lastname (surname) of the patient. This is the official lastname that should be used for official administrative purposes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// the list of all names of the patient, also containing the official full name information. Ordered by preference of use. First element is therefore the official name used for the patient in the application
  List<PersonName> names;

  /// the name of the company this patient is member of.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyName;

  /// the list of languages spoken by the patient ordered by fluency (alpha-2 code http://www.loc.gov/standards/iso639-2/ascii_8bits.html).
  List<String> languages;

  /// the list of addresses (with address type).
  List<Address> addresses;

  /// Mr., Ms., Pr., Dr. ...
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? civility;

  /// the gender of the patient: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
  PatientGenderEnum? gender;

  /// the birth sex of the patient: male, female, indeterminate, unknown
  PatientBirthSexEnum? birthSex;

  /// The id of the patient this patient has been merged with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mergeToPatientId;

  /// The ids of the patients that have been merged inside this patient.
  Set<String> mergedIds;

  /// An alias of the person, nickname, ...
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alias;

  /// Is the patient active (boolean).
  bool active;

  /// When not active, the reason for deactivation.
  PatientDeactivationReasonEnum deactivationReason;

  /// Social security inscription number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ssin;

  /// Lastname at birth (can be different of the current name), depending on the country, must be used to design the patient .
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maidenName;

  /// Lastname of the spouse for a married woman, depending on the country, can be used to design the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spouseName;

  /// Lastname of the partner, should not be used to design the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? partnerName;

  /// any of `single`, `in_couple`, `married`, `separated`, `divorced`, `divorcing`, `widowed`, `widower`, `complicated`, `unknown`, `contract`, `other`.
  PatientPersonalStatusEnum? personalStatus;

  /// The birthdate encoded as a fuzzy date on 8 positions (YYYYMMDD) MM and/or DD can be set to 00 if unknown (19740000 is a valid date).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateOfBirth;

  /// The date of death encoded as a fuzzy date on 8 positions (YYYYMMDD) MM and/or DD can be set to 00 if unknown (19740000 is a valid date).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateOfDeath;

  /// The place of birth.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? placeOfBirth;

  /// The place of death.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? placeOfDeath;

  /// Is the patient deceased.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deceased;

  /// The level of education (college degree, undergraduate, phd).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? education;

  /// The current professional activity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? profession;

  /// A text note (can be confidential, encrypted by default).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// An administrative note, not confidential.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? administrativeNote;

  /// The nationality of the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nationality;

  /// The race of the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? race;

  /// The ethnicity of the patient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ethnicity;

  /// A picture usually saved in JPEG format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? picture;

  /// An external (from another source) id with no guarantee or requirement for unicity .
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// List of partners, or persons of contact (of class Partnership, see below).
  List<Partnership> partnerships;

  /// Links (usually for therapeutic reasons) between this patient and healthcare parties (of class PatientHealthcareParty).
  List<PatientHealthCareParty> patientHealthCareParties;

  /// Codified list of professions exercised by this patient.
  List<CodingReference> patientProfessions;

  /// Extra parameters
  Map<String, List<String>> parameters;

  /// Extra properties
  Set<Property> properties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SystemMetaDataOwnerEncrypted? systemMetaData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Patient &&
          other.id == id &&
          other.rev == rev &&
          ListEquality().equals(other.identifiers, identifiers) &&
          other.created == created &&
          other.modified == modified &&
          other.author == author &&
          other.responsible == responsible &&
          SetEquality().equals(other.labels, labels) &&
          SetEquality().equals(other.codes, codes) &&
          other.endOfLife == endOfLife &&
          other.deletionDate == deletionDate &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          ListEquality().equals(other.names, names) &&
          other.companyName == companyName &&
          ListEquality().equals(other.languages, languages) &&
          ListEquality().equals(other.addresses, addresses) &&
          other.civility == civility &&
          other.gender == gender &&
          other.birthSex == birthSex &&
          other.mergeToPatientId == mergeToPatientId &&
          SetEquality().equals(other.mergedIds, mergedIds) &&
          other.alias == alias &&
          other.active == active &&
          other.deactivationReason == deactivationReason &&
          other.ssin == ssin &&
          other.maidenName == maidenName &&
          other.spouseName == spouseName &&
          other.partnerName == partnerName &&
          other.personalStatus == personalStatus &&
          other.dateOfBirth == dateOfBirth &&
          other.dateOfDeath == dateOfDeath &&
          other.placeOfBirth == placeOfBirth &&
          other.placeOfDeath == placeOfDeath &&
          other.deceased == deceased &&
          other.education == education &&
          other.profession == profession &&
          other.note == note &&
          other.administrativeNote == administrativeNote &&
          other.nationality == nationality &&
          other.race == race &&
          other.ethnicity == ethnicity &&
          other.picture == picture &&
          other.externalId == externalId &&
          ListEquality().equals(other.partnerships, partnerships) &&
          ListEquality().equals(other.patientHealthCareParties, patientHealthCareParties) &&
          ListEquality().equals(other.patientProfessions, patientProfessions) &&
          MapEquality(values: ListEquality()).equals(other.parameters, parameters) &&
          SetEquality().equals(other.properties, properties) &&
          other.systemMetaData == systemMetaData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (identifiers.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (modified == null ? 0 : modified!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (responsible == null ? 0 : responsible!.hashCode) +
      (labels.hashCode) +
      (codes.hashCode) +
      (endOfLife == null ? 0 : endOfLife!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (names.hashCode) +
      (companyName == null ? 0 : companyName!.hashCode) +
      (languages.hashCode) +
      (addresses.hashCode) +
      (civility == null ? 0 : civility!.hashCode) +
      (gender == null ? 0 : gender!.hashCode) +
      (birthSex == null ? 0 : birthSex!.hashCode) +
      (mergeToPatientId == null ? 0 : mergeToPatientId!.hashCode) +
      (mergedIds.hashCode) +
      (alias == null ? 0 : alias!.hashCode) +
      (active.hashCode) +
      (deactivationReason.hashCode) +
      (ssin == null ? 0 : ssin!.hashCode) +
      (maidenName == null ? 0 : maidenName!.hashCode) +
      (spouseName == null ? 0 : spouseName!.hashCode) +
      (partnerName == null ? 0 : partnerName!.hashCode) +
      (personalStatus == null ? 0 : personalStatus!.hashCode) +
      (dateOfBirth == null ? 0 : dateOfBirth!.hashCode) +
      (dateOfDeath == null ? 0 : dateOfDeath!.hashCode) +
      (placeOfBirth == null ? 0 : placeOfBirth!.hashCode) +
      (placeOfDeath == null ? 0 : placeOfDeath!.hashCode) +
      (deceased == null ? 0 : deceased!.hashCode) +
      (education == null ? 0 : education!.hashCode) +
      (profession == null ? 0 : profession!.hashCode) +
      (note == null ? 0 : note!.hashCode) +
      (administrativeNote == null ? 0 : administrativeNote!.hashCode) +
      (nationality == null ? 0 : nationality!.hashCode) +
      (race == null ? 0 : race!.hashCode) +
      (ethnicity == null ? 0 : ethnicity!.hashCode) +
      (picture == null ? 0 : picture!.hashCode) +
      (externalId == null ? 0 : externalId!.hashCode) +
      (partnerships.hashCode) +
      (patientHealthCareParties.hashCode) +
      (patientProfessions.hashCode) +
      (parameters.hashCode) +
      (properties.hashCode) +
      (systemMetaData == null ? 0 : systemMetaData!.hashCode);

  @override
  String toString() =>
      'Patient[id=$id, rev=$rev, identifiers=$identifiers, created=$created, modified=$modified, author=$author, responsible=$responsible, labels=$labels, codes=$codes, endOfLife=$endOfLife, deletionDate=$deletionDate, firstName=$firstName, lastName=$lastName, names=$names, companyName=$companyName, languages=$languages, addresses=$addresses, civility=$civility, gender=$gender, birthSex=$birthSex, mergeToPatientId=$mergeToPatientId, mergedIds=$mergedIds, alias=$alias, active=$active, deactivationReason=$deactivationReason, ssin=$ssin, maidenName=$maidenName, spouseName=$spouseName, partnerName=$partnerName, personalStatus=$personalStatus, dateOfBirth=$dateOfBirth, dateOfDeath=$dateOfDeath, placeOfBirth=$placeOfBirth, placeOfDeath=$placeOfDeath, deceased=$deceased, education=$education, profession=$profession, note=$note, administrativeNote=$administrativeNote, nationality=$nationality, race=$race, ethnicity=$ethnicity, picture=$picture, externalId=$externalId, partnerships=$partnerships, patientHealthCareParties=$patientHealthCareParties, patientProfessions=$patientProfessions, parameters=$parameters, properties=$properties, systemMetaData=$systemMetaData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (rev != null) {
      json[r'rev'] = rev;
    }
    json[r'identifiers'] = identifiers;
    if (created != null) {
      json[r'created'] = created;
    }
    if (modified != null) {
      json[r'modified'] = modified;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (responsible != null) {
      json[r'responsible'] = responsible;
    }
    json[r'labels'] = labels.toList();
    json[r'codes'] = codes.toList();
    if (endOfLife != null) {
      json[r'endOfLife'] = endOfLife;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    json[r'names'] = names;
    if (companyName != null) {
      json[r'companyName'] = companyName;
    }
    json[r'languages'] = languages;
    json[r'addresses'] = addresses;
    if (civility != null) {
      json[r'civility'] = civility;
    }
    if (gender != null) {
      json[r'gender'] = gender;
    }
    if (birthSex != null) {
      json[r'birthSex'] = birthSex;
    }
    if (mergeToPatientId != null) {
      json[r'mergeToPatientId'] = mergeToPatientId;
    }
    json[r'mergedIds'] = mergedIds.toList();
    if (alias != null) {
      json[r'alias'] = alias;
    }
    json[r'active'] = active;
    json[r'deactivationReason'] = deactivationReason;
    if (ssin != null) {
      json[r'ssin'] = ssin;
    }
    if (maidenName != null) {
      json[r'maidenName'] = maidenName;
    }
    if (spouseName != null) {
      json[r'spouseName'] = spouseName;
    }
    if (partnerName != null) {
      json[r'partnerName'] = partnerName;
    }
    if (personalStatus != null) {
      json[r'personalStatus'] = personalStatus;
    }
    if (dateOfBirth != null) {
      json[r'dateOfBirth'] = dateOfBirth;
    }
    if (dateOfDeath != null) {
      json[r'dateOfDeath'] = dateOfDeath;
    }
    if (placeOfBirth != null) {
      json[r'placeOfBirth'] = placeOfBirth;
    }
    if (placeOfDeath != null) {
      json[r'placeOfDeath'] = placeOfDeath;
    }
    if (deceased != null) {
      json[r'deceased'] = deceased;
    }
    if (education != null) {
      json[r'education'] = education;
    }
    if (profession != null) {
      json[r'profession'] = profession;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    if (administrativeNote != null) {
      json[r'administrativeNote'] = administrativeNote;
    }
    if (nationality != null) {
      json[r'nationality'] = nationality;
    }
    if (race != null) {
      json[r'race'] = race;
    }
    if (ethnicity != null) {
      json[r'ethnicity'] = ethnicity;
    }
    if (picture != null) {
      json[r'picture'] = picture;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    json[r'partnerships'] = partnerships;
    json[r'patientHealthCareParties'] = patientHealthCareParties;
    json[r'patientProfessions'] = patientProfessions;
    json[r'parameters'] = parameters;
    json[r'properties'] = properties.toList();
    if (systemMetaData != null) {
      json[r'systemMetaData'] = systemMetaData;
    }
    return json;
  }

  /// Returns a new [Patient] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Patient? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Patient[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Patient[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Patient(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        identifiers: Identifier.listFromJson(json[r'identifiers'])!,
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        labels: CodingReference.listFromJson(json[r'labels'])!.toSet(),
        codes: CodingReference.listFromJson(json[r'codes'])!.toSet(),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        names: PersonName.listFromJson(json[r'names'])!,
        companyName: mapValueOfType<String>(json, r'companyName'),
        languages: json[r'languages'] is List ? (json[r'languages'] as List).cast<String>() : const [],
        addresses: Address.listFromJson(json[r'addresses'])!,
        civility: mapValueOfType<String>(json, r'civility'),
        gender: PatientGenderEnum.fromJson(json[r'gender']),
        birthSex: PatientBirthSexEnum.fromJson(json[r'birthSex']),
        mergeToPatientId: mapValueOfType<String>(json, r'mergeToPatientId'),
        mergedIds: json[r'mergedIds'] is Set
            ? (json[r'mergedIds'] as Set).cast<String>()
            : json[r'mergedIds'] is List
                ? ((json[r'mergedIds'] as List).toSet()).cast<String>()
                : const {},
        alias: mapValueOfType<String>(json, r'alias'),
        active: mapValueOfType<bool>(json, r'active')!,
        deactivationReason: PatientDeactivationReasonEnum.fromJson(json[r'deactivationReason'])!,
        ssin: mapValueOfType<String>(json, r'ssin'),
        maidenName: mapValueOfType<String>(json, r'maidenName'),
        spouseName: mapValueOfType<String>(json, r'spouseName'),
        partnerName: mapValueOfType<String>(json, r'partnerName'),
        personalStatus: PatientPersonalStatusEnum.fromJson(json[r'personalStatus']),
        dateOfBirth: mapValueOfType<int>(json, r'dateOfBirth'),
        dateOfDeath: mapValueOfType<int>(json, r'dateOfDeath'),
        placeOfBirth: mapValueOfType<String>(json, r'placeOfBirth'),
        placeOfDeath: mapValueOfType<String>(json, r'placeOfDeath'),
        deceased: mapValueOfType<bool>(json, r'deceased'),
        education: mapValueOfType<String>(json, r'education'),
        profession: mapValueOfType<String>(json, r'profession'),
        note: mapValueOfType<String>(json, r'note'),
        administrativeNote: mapValueOfType<String>(json, r'administrativeNote'),
        nationality: mapValueOfType<String>(json, r'nationality'),
        race: mapValueOfType<String>(json, r'race'),
        ethnicity: mapValueOfType<String>(json, r'ethnicity'),
        picture: mapValueOfType<String>(json, r'picture'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        partnerships: Partnership.listFromJson(json[r'partnerships'])!,
        patientHealthCareParties: PatientHealthCareParty.listFromJson(json[r'patientHealthCareParties'])!,
        patientProfessions: CodingReference.listFromJson(json[r'patientProfessions'])!,
        parameters: json[r'parameters'] == null ? const {} : mapWithListOfStringsFromJson(json[r'parameters']),
        properties: Property.listFromJson(json[r'properties'])!.toSet(),
        systemMetaData: SystemMetaDataOwnerEncrypted.fromJson(json[r'systemMetaData']),
      );
    }
    return null;
  }

  static List<Patient>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Patient>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Patient.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Patient> mapFromJson(dynamic json) {
    final map = <String, Patient>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Patient.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Patient-objects as value to a dart map
  static Map<String, List<Patient>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Patient>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Patient.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identifiers',
    'labels',
    'codes',
    'names',
    'languages',
    'addresses',
    'mergedIds',
    'active',
    'deactivationReason',
    'partnerships',
    'patientHealthCareParties',
    'patientProfessions',
    'parameters',
    'properties',
  };
}

/// the gender of the patient: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
class PatientGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const PatientGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const male = PatientGenderEnum._(r'male');
  static const female = PatientGenderEnum._(r'female');
  static const indeterminate = PatientGenderEnum._(r'indeterminate');
  static const changed = PatientGenderEnum._(r'changed');
  static const changedToMale = PatientGenderEnum._(r'changedToMale');
  static const changedToFemale = PatientGenderEnum._(r'changedToFemale');
  static const unknown = PatientGenderEnum._(r'unknown');

  /// List of all possible values in this [enum][PatientGenderEnum].
  static const values = <PatientGenderEnum>[
    male,
    female,
    indeterminate,
    changed,
    changedToMale,
    changedToFemale,
    unknown,
  ];

  static PatientGenderEnum? fromJson(dynamic value) => PatientGenderEnumTypeTransformer().decode(value);

  static List<PatientGenderEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PatientGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatientGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PatientGenderEnum] to String,
/// and [decode] dynamic data back to [PatientGenderEnum].
class PatientGenderEnumTypeTransformer {
  factory PatientGenderEnumTypeTransformer() => _instance ??= const PatientGenderEnumTypeTransformer._();

  const PatientGenderEnumTypeTransformer._();

  String encode(PatientGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatientGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatientGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'male':
          return PatientGenderEnum.male;
        case r'female':
          return PatientGenderEnum.female;
        case r'indeterminate':
          return PatientGenderEnum.indeterminate;
        case r'changed':
          return PatientGenderEnum.changed;
        case r'changedToMale':
          return PatientGenderEnum.changedToMale;
        case r'changedToFemale':
          return PatientGenderEnum.changedToFemale;
        case r'unknown':
          return PatientGenderEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatientGenderEnumTypeTransformer] instance.
  static PatientGenderEnumTypeTransformer? _instance;
}

/// the birth sex of the patient: male, female, indeterminate, unknown
class PatientBirthSexEnum {
  /// Instantiate a new enum with the provided [value].
  const PatientBirthSexEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const male = PatientBirthSexEnum._(r'male');
  static const female = PatientBirthSexEnum._(r'female');
  static const indeterminate = PatientBirthSexEnum._(r'indeterminate');
  static const changed = PatientBirthSexEnum._(r'changed');
  static const changedToMale = PatientBirthSexEnum._(r'changedToMale');
  static const changedToFemale = PatientBirthSexEnum._(r'changedToFemale');
  static const unknown = PatientBirthSexEnum._(r'unknown');

  /// List of all possible values in this [enum][PatientBirthSexEnum].
  static const values = <PatientBirthSexEnum>[
    male,
    female,
    indeterminate,
    changed,
    changedToMale,
    changedToFemale,
    unknown,
  ];

  static PatientBirthSexEnum? fromJson(dynamic value) => PatientBirthSexEnumTypeTransformer().decode(value);

  static List<PatientBirthSexEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PatientBirthSexEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatientBirthSexEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PatientBirthSexEnum] to String,
/// and [decode] dynamic data back to [PatientBirthSexEnum].
class PatientBirthSexEnumTypeTransformer {
  factory PatientBirthSexEnumTypeTransformer() => _instance ??= const PatientBirthSexEnumTypeTransformer._();

  const PatientBirthSexEnumTypeTransformer._();

  String encode(PatientBirthSexEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatientBirthSexEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatientBirthSexEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'male':
          return PatientBirthSexEnum.male;
        case r'female':
          return PatientBirthSexEnum.female;
        case r'indeterminate':
          return PatientBirthSexEnum.indeterminate;
        case r'changed':
          return PatientBirthSexEnum.changed;
        case r'changedToMale':
          return PatientBirthSexEnum.changedToMale;
        case r'changedToFemale':
          return PatientBirthSexEnum.changedToFemale;
        case r'unknown':
          return PatientBirthSexEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatientBirthSexEnumTypeTransformer] instance.
  static PatientBirthSexEnumTypeTransformer? _instance;
}

/// When not active, the reason for deactivation.
class PatientDeactivationReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const PatientDeactivationReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const deceased = PatientDeactivationReasonEnum._(r'deceased');
  static const moved = PatientDeactivationReasonEnum._(r'moved');
  static const otherDoctor = PatientDeactivationReasonEnum._(r'other_doctor');
  static const retired = PatientDeactivationReasonEnum._(r'retired');
  static const noContact = PatientDeactivationReasonEnum._(r'no_contact');
  static const unknown = PatientDeactivationReasonEnum._(r'unknown');
  static const none = PatientDeactivationReasonEnum._(r'none');

  /// List of all possible values in this [enum][PatientDeactivationReasonEnum].
  static const values = <PatientDeactivationReasonEnum>[
    deceased,
    moved,
    otherDoctor,
    retired,
    noContact,
    unknown,
    none,
  ];

  static PatientDeactivationReasonEnum? fromJson(dynamic value) => PatientDeactivationReasonEnumTypeTransformer().decode(value);

  static List<PatientDeactivationReasonEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PatientDeactivationReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatientDeactivationReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PatientDeactivationReasonEnum] to String,
/// and [decode] dynamic data back to [PatientDeactivationReasonEnum].
class PatientDeactivationReasonEnumTypeTransformer {
  factory PatientDeactivationReasonEnumTypeTransformer() => _instance ??= const PatientDeactivationReasonEnumTypeTransformer._();

  const PatientDeactivationReasonEnumTypeTransformer._();

  String encode(PatientDeactivationReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatientDeactivationReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatientDeactivationReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'deceased':
          return PatientDeactivationReasonEnum.deceased;
        case r'moved':
          return PatientDeactivationReasonEnum.moved;
        case r'other_doctor':
          return PatientDeactivationReasonEnum.otherDoctor;
        case r'retired':
          return PatientDeactivationReasonEnum.retired;
        case r'no_contact':
          return PatientDeactivationReasonEnum.noContact;
        case r'unknown':
          return PatientDeactivationReasonEnum.unknown;
        case r'none':
          return PatientDeactivationReasonEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatientDeactivationReasonEnumTypeTransformer] instance.
  static PatientDeactivationReasonEnumTypeTransformer? _instance;
}

/// any of `single`, `in_couple`, `married`, `separated`, `divorced`, `divorcing`, `widowed`, `widower`, `complicated`, `unknown`, `contract`, `other`.
class PatientPersonalStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PatientPersonalStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const single = PatientPersonalStatusEnum._(r'single');
  static const inCouple = PatientPersonalStatusEnum._(r'in_couple');
  static const married = PatientPersonalStatusEnum._(r'married');
  static const separated = PatientPersonalStatusEnum._(r'separated');
  static const divorced = PatientPersonalStatusEnum._(r'divorced');
  static const divorcing = PatientPersonalStatusEnum._(r'divorcing');
  static const widowed = PatientPersonalStatusEnum._(r'widowed');
  static const widower = PatientPersonalStatusEnum._(r'widower');
  static const complicated = PatientPersonalStatusEnum._(r'complicated');
  static const unknown = PatientPersonalStatusEnum._(r'unknown');
  static const contract = PatientPersonalStatusEnum._(r'contract');
  static const other = PatientPersonalStatusEnum._(r'other');
  static const annulled = PatientPersonalStatusEnum._(r'annulled');
  static const polygamous = PatientPersonalStatusEnum._(r'polygamous');

  /// List of all possible values in this [enum][PatientPersonalStatusEnum].
  static const values = <PatientPersonalStatusEnum>[
    single,
    inCouple,
    married,
    separated,
    divorced,
    divorcing,
    widowed,
    widower,
    complicated,
    unknown,
    contract,
    other,
    annulled,
    polygamous,
  ];

  static PatientPersonalStatusEnum? fromJson(dynamic value) => PatientPersonalStatusEnumTypeTransformer().decode(value);

  static List<PatientPersonalStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PatientPersonalStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatientPersonalStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PatientPersonalStatusEnum] to String,
/// and [decode] dynamic data back to [PatientPersonalStatusEnum].
class PatientPersonalStatusEnumTypeTransformer {
  factory PatientPersonalStatusEnumTypeTransformer() => _instance ??= const PatientPersonalStatusEnumTypeTransformer._();

  const PatientPersonalStatusEnumTypeTransformer._();

  String encode(PatientPersonalStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatientPersonalStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatientPersonalStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'single':
          return PatientPersonalStatusEnum.single;
        case r'in_couple':
          return PatientPersonalStatusEnum.inCouple;
        case r'married':
          return PatientPersonalStatusEnum.married;
        case r'separated':
          return PatientPersonalStatusEnum.separated;
        case r'divorced':
          return PatientPersonalStatusEnum.divorced;
        case r'divorcing':
          return PatientPersonalStatusEnum.divorcing;
        case r'widowed':
          return PatientPersonalStatusEnum.widowed;
        case r'widower':
          return PatientPersonalStatusEnum.widower;
        case r'complicated':
          return PatientPersonalStatusEnum.complicated;
        case r'unknown':
          return PatientPersonalStatusEnum.unknown;
        case r'contract':
          return PatientPersonalStatusEnum.contract;
        case r'other':
          return PatientPersonalStatusEnum.other;
        case r'annulled':
          return PatientPersonalStatusEnum.annulled;
        case r'polygamous':
          return PatientPersonalStatusEnum.polygamous;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatientPersonalStatusEnumTypeTransformer] instance.
  static PatientPersonalStatusEnumTypeTransformer? _instance;
}
