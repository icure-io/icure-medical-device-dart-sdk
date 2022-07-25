//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_medical_device_dart_sdk.api;

class HealthcareProfessional {
  /// Returns a new [HealthcareProfessional] instance.
  HealthcareProfessional({
    this.id,
    this.rev,
    this.created,
    this.modified,
    this.deletionDate,
    this.name,
    this.lastName,
    this.firstName,
    this.names = const [],
    this.gender,
    this.civility,
    this.speciality,
    this.parentId,
    this.addresses = const [],
    this.languages = const [],
    this.picture,
    this.specialityCodes = const {},
    this.notes,
    this.properties = const {},
    this.systemMetaData,
  });

  /// the Id of the healthcare party. We encourage using either a v4 UUID or a HL7 Id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// the revision of the healthcare party in the database, used for conflict management / optimistic locking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// creation timestamp of the object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// last modification timestamp of the object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modified;

  /// the soft delete timestamp. When a user is ”deleted“, this is set to a non null value: the moment of the deletion
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  /// The full name of the healthcare party, used mainly when the healthcare party is an organization
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// the lastname (surname) of the healthcare party. This is the official lastname that should be used for official administrative purposes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// the firstname (name) of the healthcare party.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// the list of all names of the healthcare party, also containing the official full name information. Ordered by preference of use. First element is therefore the official name used for the healthcare party in the application
  List<PersonName> names;

  /// the gender of the healthcare party: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
  HealthcareProfessionalGenderEnum? gender;

  /// Mr., Ms., Pr., Dr. ...
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? civility;

  /// Medical specialty of the healthcare party
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? speciality;

  /// Id of parent of the user representing the healthcare party.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  /// The list of addresses (with address type).
  List<Address> addresses;

  /// The list of languages spoken by the patient ordered by fluency (alpha-2 code http://www.loc.gov/standards/iso639-2/ascii_8bits.html).
  List<String> languages;

  /// A picture usually saved in JPEG format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? picture;

  /// Medical specialty of the healthcare party codified using FHIR or Kmehr codificaiton scheme
  Set<CodingReference> specialityCodes;

  /// Text notes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notes;

  Set<Property> properties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SystemMetaDataOwner? systemMetaData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthcareProfessional &&
          other.id == id &&
          other.rev == rev &&
          other.created == created &&
          other.modified == modified &&
          other.deletionDate == deletionDate &&
          other.name == name &&
          other.lastName == lastName &&
          other.firstName == firstName &&
          ListEquality().equals(other.names, names) &&
          other.gender == gender &&
          other.civility == civility &&
          other.speciality == speciality &&
          other.parentId == parentId &&
          ListEquality().equals(other.addresses, addresses) &&
          ListEquality().equals(other.languages, languages) &&
          other.picture == picture &&
          SetEquality().equals(other.specialityCodes, specialityCodes) &&
          other.notes == notes &&
          SetEquality().equals(other.properties, properties) &&
          other.systemMetaData == systemMetaData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (modified == null ? 0 : modified!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (names.hashCode) +
      (gender == null ? 0 : gender!.hashCode) +
      (civility == null ? 0 : civility!.hashCode) +
      (speciality == null ? 0 : speciality!.hashCode) +
      (parentId == null ? 0 : parentId!.hashCode) +
      (addresses.hashCode) +
      (languages.hashCode) +
      (picture == null ? 0 : picture!.hashCode) +
      (specialityCodes.hashCode) +
      (notes == null ? 0 : notes!.hashCode) +
      (properties.hashCode) +
      (systemMetaData == null ? 0 : systemMetaData!.hashCode);

  @override
  String toString() =>
      'HealthcareProfessional[id=$id, rev=$rev, created=$created, modified=$modified, deletionDate=$deletionDate, name=$name, lastName=$lastName, firstName=$firstName, names=$names, gender=$gender, civility=$civility, speciality=$speciality, parentId=$parentId, addresses=$addresses, languages=$languages, picture=$picture, specialityCodes=$specialityCodes, notes=$notes, properties=$properties, systemMetaData=$systemMetaData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (created != null) {
      json[r'created'] = created;
    }
    if (modified != null) {
      json[r'modified'] = modified;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    json[r'names'] = names;
    if (gender != null) {
      json[r'gender'] = gender;
    }
    if (civility != null) {
      json[r'civility'] = civility;
    }
    if (speciality != null) {
      json[r'speciality'] = speciality;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    json[r'addresses'] = addresses;
    json[r'languages'] = languages;
    if (picture != null) {
      json[r'picture'] = picture;
    }
    json[r'specialityCodes'] = specialityCodes.toList();
    if (notes != null) {
      json[r'notes'] = notes;
    }
    json[r'properties'] = properties.toList();
    if (systemMetaData != null) {
      json[r'systemMetaData'] = systemMetaData;
    }
    return json;
  }

  /// Returns a new [HealthcareProfessional] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthcareProfessional? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HealthcareProfessional[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HealthcareProfessional[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthcareProfessional(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        name: mapValueOfType<String>(json, r'name'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        names: PersonName.listFromJson(json[r'names'])!,
        gender: HealthcareProfessionalGenderEnum.fromJson(json[r'gender']),
        civility: mapValueOfType<String>(json, r'civility'),
        speciality: mapValueOfType<String>(json, r'speciality'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        addresses: Address.listFromJson(json[r'addresses'])!,
        languages: json[r'languages'] is List ? (json[r'languages'] as List).cast<String>() : const [],
        picture: mapValueOfType<String>(json, r'picture'),
        specialityCodes: CodingReference.listFromJson(json[r'specialityCodes'])!.toSet(),
        notes: mapValueOfType<String>(json, r'notes'),
        properties: Property.listFromJson(json[r'properties'])!.toSet(),
        systemMetaData: SystemMetaDataOwner.fromJson(json[r'systemMetaData']),
      );
    }
    return null;
  }

  static List<HealthcareProfessional>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HealthcareProfessional>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthcareProfessional.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthcareProfessional> mapFromJson(dynamic json) {
    final map = <String, HealthcareProfessional>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthcareProfessional.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthcareProfessional-objects as value to a dart map
  static Map<String, List<HealthcareProfessional>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<HealthcareProfessional>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthcareProfessional.listFromJson(
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
    'names',
    'addresses',
    'languages',
    'specialityCodes',
    'properties',
  };
}

/// the gender of the healthcare party: male, female, indeterminate, changed, changedToMale, changedToFemale, unknown
class HealthcareProfessionalGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const HealthcareProfessionalGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const male = HealthcareProfessionalGenderEnum._(r'male');
  static const female = HealthcareProfessionalGenderEnum._(r'female');
  static const indeterminate = HealthcareProfessionalGenderEnum._(r'indeterminate');
  static const changed = HealthcareProfessionalGenderEnum._(r'changed');
  static const changedToMale = HealthcareProfessionalGenderEnum._(r'changedToMale');
  static const changedToFemale = HealthcareProfessionalGenderEnum._(r'changedToFemale');
  static const unknown = HealthcareProfessionalGenderEnum._(r'unknown');

  /// List of all possible values in this [enum][HealthcareProfessionalGenderEnum].
  static const values = <HealthcareProfessionalGenderEnum>[
    male,
    female,
    indeterminate,
    changed,
    changedToMale,
    changedToFemale,
    unknown,
  ];

  static HealthcareProfessionalGenderEnum? fromJson(dynamic value) => HealthcareProfessionalGenderEnumTypeTransformer().decode(value);

  static List<HealthcareProfessionalGenderEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HealthcareProfessionalGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthcareProfessionalGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HealthcareProfessionalGenderEnum] to String,
/// and [decode] dynamic data back to [HealthcareProfessionalGenderEnum].
class HealthcareProfessionalGenderEnumTypeTransformer {
  factory HealthcareProfessionalGenderEnumTypeTransformer() => _instance ??= const HealthcareProfessionalGenderEnumTypeTransformer._();

  const HealthcareProfessionalGenderEnumTypeTransformer._();

  String encode(HealthcareProfessionalGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthcareProfessionalGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthcareProfessionalGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'male':
          return HealthcareProfessionalGenderEnum.male;
        case r'female':
          return HealthcareProfessionalGenderEnum.female;
        case r'indeterminate':
          return HealthcareProfessionalGenderEnum.indeterminate;
        case r'changed':
          return HealthcareProfessionalGenderEnum.changed;
        case r'changedToMale':
          return HealthcareProfessionalGenderEnum.changedToMale;
        case r'changedToFemale':
          return HealthcareProfessionalGenderEnum.changedToFemale;
        case r'unknown':
          return HealthcareProfessionalGenderEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthcareProfessionalGenderEnumTypeTransformer] instance.
  static HealthcareProfessionalGenderEnumTypeTransformer? _instance;
}
