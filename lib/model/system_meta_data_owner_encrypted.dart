//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_medical_device_dart_sdk.api;

class SystemMetaDataOwnerEncrypted {
  /// Returns a new [SystemMetaDataOwnerEncrypted] instance.
  SystemMetaDataOwnerEncrypted({
    this.publicKey = null,
    this.hcPartyKeys = const {},
    this.privateKeyShamirPartitions = const {},
    this.secretForeignKeys = const [],
    this.cryptedForeignKeys = const {},
    this.delegations = const {},
    this.encryptionKeys = const {},
    this.aesExchangeKeys = const {},
    this.transferKeys = const {}});

  String? publicKey;

  Map<String, List<String>> hcPartyKeys;

  Map<String, String> privateKeyShamirPartitions;

  List<String> secretForeignKeys;

  Map<String, List<Delegation>> cryptedForeignKeys;

  Map<String, List<Delegation>> delegations;

  Map<String, List<Delegation>> encryptionKeys;

  Map<String, Map<String, List<String>>> aesExchangeKeys;

  Map<String, Map<String, String>> transferKeys;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemMetaDataOwnerEncrypted &&
          other.publicKey == publicKey &&
          MapEquality(values: ListEquality()).equals(other.hcPartyKeys, hcPartyKeys) &&
          MapEquality().equals(other.privateKeyShamirPartitions, privateKeyShamirPartitions) &&
          ListEquality().equals(secretForeignKeys, secretForeignKeys) &&
          MapEquality(values: ListEquality()).equals(other.cryptedForeignKeys, cryptedForeignKeys) &&
          MapEquality(values: ListEquality()).equals(other.delegations, delegations) &&
          MapEquality(values: ListEquality()).equals(other.encryptionKeys, encryptionKeys) &&
          MapEquality(values: MapEquality(values: ListEquality())).equals(other.aesExchangeKeys, aesExchangeKeys) &&
          MapEquality(values: MapEquality()).equals(other.transferKeys, transferKeys);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (publicKey == null ? 0 : publicKey!.hashCode) +
      (hcPartyKeys.hashCode) +
      (privateKeyShamirPartitions.hashCode) +
      (secretForeignKeys.hashCode) +
      (cryptedForeignKeys.hashCode) +
      (delegations.hashCode) +
      (encryptionKeys.hashCode) +
      (aesExchangeKeys.hashCode) +
      (transferKeys.hashCode);

  @override
  String toString() =>
      'SystemMetaDataOwnerEncrypted[publicKey=$publicKey, hcPartyKeys=$hcPartyKeys, privateKeyShamirPartitions=$privateKeyShamirPartitions, secretForeignKeys=$secretForeignKeys, cryptedForeignKeys=$cryptedForeignKeys, delegations=$delegations, encryptionKeys=$encryptionKeys, aesExchangeKeys=$aesExchangeKeys, transferKeys=$transferKeys';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (publicKey != null) {
      json[r'publicKey'] = publicKey;
    }
    json[r'hcPartyKeys'] = hcPartyKeys;
    json[r'privateKeyShamirPartitions'] = privateKeyShamirPartitions;
    json[r'secretForeignKeys'] = secretForeignKeys;
    json[r'cryptedForeignKeys'] = cryptedForeignKeys;
    json[r'delegations'] = delegations;
    json[r'encryptionKeys'] = encryptionKeys;
    json[r'aesExchangeKeys'] = aesExchangeKeys;
    json[r'transferKeys'] = transferKeys;
    return json;
  }

  /// Returns a new [SystemMetaDataOwnerEncrypted] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemMetaDataOwnerEncrypted? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SystemMetaDataOwnerEncrypted[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SystemMetaDataOwnerEncrypted[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemMetaDataOwnerEncrypted(
        publicKey: mapValueOfType<String>(json, r'publicKey'),
        hcPartyKeys: json[r'hcPartyKeys'] == null ? const {} : mapWithListOfStringsFromJson(json[r'hcPartyKeys']),
        privateKeyShamirPartitions: mapCastOfType<String, String>(json, r'privateKeyShamirPartitions')!,
        secretForeignKeys: json[r'secretForeignKeys'] == null ? const [] : (json[r'secretForeignKeys'] as List).cast<String>(),
        cryptedForeignKeys: json[r'cryptedForeignKeys'] == null ? const {} : Delegation.mapListFromJson(json[r'cryptedForeignKeys']),
        delegations: json[r'delegations'] == null ? const {} : Delegation.mapListFromJson(json[r'delegations']),
        encryptionKeys: json[r'encryptionKeys'] == null ? const {} : Delegation.mapListFromJson(json[r'encryptionKeys']),
        aesExchangeKeys: json[r'aesExchangeKeys'] == null ? const {} : mapOf(json[r'aesExchangeKeys'], (el) => mapWithListOfStringsFromJson(el)),
        transferKeys: json[r'transferKeys'] == null ? const {} : mapWithMapOfStringsFromJson(json[r'transferKeys']),
      );
    }
    return null;
  }

  static List<SystemMetaDataOwnerEncrypted>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemMetaDataOwnerEncrypted>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemMetaDataOwnerEncrypted.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemMetaDataOwnerEncrypted> mapFromJson(dynamic json) {
    final map = <String, SystemMetaDataOwnerEncrypted>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemMetaDataOwnerEncrypted.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemMetaDataOwnerEncrypted-objects as value to a dart map
  static Map<String, List<SystemMetaDataOwnerEncrypted>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SystemMetaDataOwnerEncrypted>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemMetaDataOwnerEncrypted.listFromJson(
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
    'secretForeignKeys',
    'cryptedForeignKeys',
    'delegations',
    'encryptionKeys',
    'aesExchangeKeys',
    'transferKeys',
    'lostHcPartyKeys'
  };
}
