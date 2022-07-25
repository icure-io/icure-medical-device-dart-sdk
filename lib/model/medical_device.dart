//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_medical_device_dart_sdk.api;

class MedicalDevice {
  /// Returns a new [MedicalDevice] instance.
  MedicalDevice({
    this.id,
    this.rev,
    this.deletionDate,
    this.identifiers = const [],
    this.created,
    this.modified,
    this.author,
    this.responsible,
    this.labels = const {},
    this.codes = const {},
    this.endOfLife,
    this.externalId,
    this.name,
    this.type,
    this.brand,
    this.model,
    this.serialNumber,
    this.parentId,
    this.picture = const [],
    this.properties = const {},
    this.systemMetaData,
  });

  /// The Id of the MedicalDevice. We encourage using either a v4 UUID or a HL7 Id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// the revision of the medical device in the database, used for conflict management / optimistic locking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  /// the soft delete timestamp. When a medical device is ”deleted“, this is set to a non null value: the moment of the deletion
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deletionDate;

  /// Typically used for business / client identifiers. An identifier should identify a device uniquely and unambiguously. However, iCure can't guarantee the uniqueness of those identifiers : This is something you need to take care of.
  List<Identifier> identifiers;

  /// the creation date of the medical device (encoded as epoch).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// the last modification date of the medical device (encoded as epoch).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modified;

  /// The id of the [User] that created this medical device. When creating the device, this field will be filled automatically by the current user id if not provided.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// The id of the data owner that is responsible of this medical device. When creating the medical device, will be filled automatically by the current user data owner id ([HealthcareProfessional], [Patient] or [MedicalDevice]) if missing
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responsible;

  /// A label is an item from a codification system that qualifies a medical device as being member of a certain class, whatever the value it might have taken. If the label qualifies the content of a field, it means that whatever the content of the field, the label will always apply. LOINC is a codification system typically used for labels.
  Set<CodingReference> labels;

  /// A code is an item from a codification system that qualifies the content of this medical device. SNOMED-CT, ICPC-2 or ICD-10 codifications systems can be used for codes
  Set<CodingReference> codes;

  /// Soft delete (unix epoch in ms) timestamp of the medical device
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endOfLife;

  /// An external (from another source) id with no guarantee or requirement for unicity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Name of the device/application recording the data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Type of device/application recording the data. (eg. \"smartphone\", \"watch\",...)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Brand of the device recording the data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  /// Model of the device recording the data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Serial number of the device recording the data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serialNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  /// Picture of the device/application
  List<String> picture;

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
      other is MedicalDevice &&
          other.id == id &&
          other.rev == rev &&
          other.deletionDate == deletionDate &&
          ListEquality().equals(other.identifiers, identifiers) &&
          other.created == created &&
          other.modified == modified &&
          other.author == author &&
          other.responsible == responsible &&
          SetEquality().equals(other.codes, codes) &&
          SetEquality().equals(other.labels, labels) &&
          other.endOfLife == endOfLife &&
          other.externalId == externalId &&
          other.name == name &&
          other.type == type &&
          other.brand == brand &&
          other.model == model &&
          other.serialNumber == serialNumber &&
          other.parentId == parentId &&
          ListEquality().equals(other.picture, picture) &&
          SetEquality().equals(other.properties, properties) &&
          other.systemMetaData == systemMetaData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (deletionDate == null ? 0 : deletionDate!.hashCode) +
      (identifiers.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (modified == null ? 0 : modified!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (responsible == null ? 0 : responsible!.hashCode) +
      (labels.hashCode) +
      (codes.hashCode) +
      (endOfLife == null ? 0 : endOfLife!.hashCode) +
      (externalId == null ? 0 : externalId!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (brand == null ? 0 : brand!.hashCode) +
      (model == null ? 0 : model!.hashCode) +
      (serialNumber == null ? 0 : serialNumber!.hashCode) +
      (parentId == null ? 0 : parentId!.hashCode) +
      (picture.hashCode) +
      (properties.hashCode) +
      (systemMetaData == null ? 0 : systemMetaData!.hashCode);

  @override
  String toString() =>
      'MedicalDevice[id=$id, rev=$rev, deletionDate=$deletionDate, identifiers=$identifiers, created=$created, modified=$modified, author=$author, responsible=$responsible, labels=$labels, codes=$codes, endOfLife=$endOfLife, externalId=$externalId, name=$name, type=$type, brand=$brand, model=$model, serialNumber=$serialNumber, parentId=$parentId, picture=$picture, properties=$properties, systemMetaData=$systemMetaData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (rev != null) {
      json[r'rev'] = rev;
    }
    if (deletionDate != null) {
      json[r'deletionDate'] = deletionDate;
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
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (brand != null) {
      json[r'brand'] = brand;
    }
    if (model != null) {
      json[r'model'] = model;
    }
    if (serialNumber != null) {
      json[r'serialNumber'] = serialNumber;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    json[r'picture'] = picture;
    json[r'properties'] = properties.toList();
    if (systemMetaData != null) {
      json[r'systemMetaData'] = systemMetaData;
    }
    return json;
  }

  /// Returns a new [MedicalDevice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MedicalDevice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MedicalDevice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MedicalDevice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MedicalDevice(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
        deletionDate: mapValueOfType<int>(json, r'deletionDate'),
        identifiers: Identifier.listFromJson(json[r'identifiers'])!,
        created: mapValueOfType<int>(json, r'created'),
        modified: mapValueOfType<int>(json, r'modified'),
        author: mapValueOfType<String>(json, r'author'),
        responsible: mapValueOfType<String>(json, r'responsible'),
        labels: CodingReference.listFromJson(json[r'labels'])!.toSet(),
        codes: CodingReference.listFromJson(json[r'codes'])!.toSet(),
        endOfLife: mapValueOfType<int>(json, r'endOfLife'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
        brand: mapValueOfType<String>(json, r'brand'),
        model: mapValueOfType<String>(json, r'model'),
        serialNumber: mapValueOfType<String>(json, r'serialNumber'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        picture: json[r'picture'] is List ? (json[r'picture'] as List).cast<String>() : const [],
        properties: Property.listFromJson(json[r'properties'])!.toSet(),
        systemMetaData: SystemMetaDataOwner.fromJson(json[r'systemMetaData']),
      );
    }
    return null;
  }

  static List<MedicalDevice>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MedicalDevice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MedicalDevice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MedicalDevice> mapFromJson(dynamic json) {
    final map = <String, MedicalDevice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MedicalDevice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MedicalDevice-objects as value to a dart map
  static Map<String, List<MedicalDevice>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MedicalDevice>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MedicalDevice.listFromJson(
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
    'properties',
  };
}
