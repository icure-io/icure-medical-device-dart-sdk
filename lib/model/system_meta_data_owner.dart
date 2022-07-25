//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_medical_device_dart_sdk.api;

class SystemMetaDataOwner {
  /// Returns a new [SystemMetaDataOwner] instance.
  SystemMetaDataOwner({
    this.publicKey = null,
    this.hcPartyKeys = const {},
    this.privateKeyShamirPartitions = const {},
    this.aesExchangeKeys = const {},
    this.transferKeys = const {},
    this.lostHcPartyKeys = const []
  });

  String? publicKey;

  Map<String, List<String>> hcPartyKeys;

  Map<String, String> privateKeyShamirPartitions;

  Map<String, Map<String, List<String>>> aesExchangeKeys;

  Map<String, Map<String, String>> transferKeys;

  List<String> lostHcPartyKeys;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemMetaDataOwner &&
          other.publicKey == publicKey &&
          MapEquality(values: ListEquality()).equals(other.hcPartyKeys, hcPartyKeys) &&
          MapEquality().equals(other.privateKeyShamirPartitions, privateKeyShamirPartitions) &&
          MapEquality(values: MapEquality(values: ListEquality())).equals(other.aesExchangeKeys, aesExchangeKeys) &&
          MapEquality(values: MapEquality()).equals(other.transferKeys, transferKeys) &&
          ListEquality().equals(other.lostHcPartyKeys, lostHcPartyKeys);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (publicKey == null ? 0 : publicKey.hashCode) +
      (hcPartyKeys.hashCode) +
      (privateKeyShamirPartitions.hashCode) +
      (aesExchangeKeys.hashCode) +
      (transferKeys.hashCode) +
      (lostHcPartyKeys.hashCode);

  @override
  String toString() => 'SystemMetaDataOwner[publicKey=$publicKey, hcPartyKeys=$hcPartyKeys, privateKeyShamirPartitions=$privateKeyShamirPartitions, aesExchangeKeys=$aesExchangeKeys, transferKeys=$transferKeys, lostHcPartyKeys=$lostHcPartyKeys]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (publicKey != null) {
      json[r'publicKey'] = publicKey;
    }
    json[r'hcPartyKeys'] = hcPartyKeys;
    json[r'privateKeyShamirPartitions'] = privateKeyShamirPartitions;
    json[r'aesExchangeKeys'] = aesExchangeKeys;
    json[r'transferKeys'] = transferKeys;
    json[r'lostHcPartyKeys'] = lostHcPartyKeys;
    return json;
  }

  /// Returns a new [SystemMetaDataOwner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemMetaDataOwner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SystemMetaDataOwner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SystemMetaDataOwner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemMetaDataOwner(
        publicKey: mapValueOfType<String>(json, r'publicKey'),
        hcPartyKeys: json[r'hcPartyKeys'] == null ? const {} : mapWithListOfStringsFromJson(json[r'hcPartyKeys']),
        privateKeyShamirPartitions: mapCastOfType<String, String>(json, r'privateKeyShamirPartitions')!,
        lostHcPartyKeys: json[r'lostHcPartyKeys'] == null ? const [] : (json[r'lostHcPartyKeys'] as List).cast<String>(),
        aesExchangeKeys: json[r'aesExchangeKeys'] == null ? const {} : mapOf(json[r'aesExchangeKeys'], (el) => mapWithListOfStringsFromJson(el)),
        transferKeys: json[r'transferKeys'] == null ? const {} : mapWithMapOfStringsFromJson(json[r'transferKeys']),
      );
    }
    return null;
  }

  static List<SystemMetaDataOwner>? listFromJson(
      dynamic json, {
        bool growable = false,
      }) {
    final result = <SystemMetaDataOwner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemMetaDataOwner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemMetaDataOwner> mapFromJson(dynamic json) {
    final map = <String, SystemMetaDataOwner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemMetaDataOwner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemMetaDataOwner-objects as value to a dart map
  static Map<String, List<SystemMetaDataOwner>> mapListFromJson(
      dynamic json, {
        bool growable = false,
      }) {
    final map = <String, List<SystemMetaDataOwner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemMetaDataOwner.listFromJson(
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
    'publicKey',
    'hcPartyKeys',
    'privateKeyShamirPartitions',
    'aesExchangeKeys',
    'transferKeys',
    'lostHcPartyKeys'
  };
}
