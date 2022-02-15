// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_medical_device_dart_sdk.api;

class HealthcareElementApiImpl extends HealthcareElementApi {
  final MedTechApi api;

  HealthcareElementApiImpl(this.api);

  @override
  Future<HealthcareElement?> createOrModifyHealthcareElement(HealthcareElement healthcareElement) async {
    final localCrypto = api.localCrypto;
    final currentUser = await api.userApi.getCurrentUser();
    final ccHealthElement = healthElementCryptoConfig(localCrypto);

    if (currentUser == null) {
      throw StateError("Couldn't get current user");
    }

    if (healthcareElement.rev != null) {
      if (healthcareElement.id == null || !Uuid.isValidUUID(fromString: healthcareElement.id!)) {
        throw ArgumentError("Update id should be provided as an UUID");
      }
      final modifiedHealthElementDto = await api.healthElementApi
          .modifyHealthElement(currentUser, HealthcareElementMapper(healthcareElement).toHealthElementDto(), ccHealthElement);
      return modifiedHealthElementDto != null ? HealthElementDtoMapper(modifiedHealthElementDto).toHealthcareElement() : null;
    }
    final createdHealthElementDto = await api.healthElementApi
        .createHealthElement(currentUser, HealthcareElementMapper(healthcareElement).toHealthElementDto(), ccHealthElement);
    return createdHealthElementDto != null ? HealthElementDtoMapper(createdHealthElementDto).toHealthcareElement() : null;
  }

  @override
  Future<List<HealthcareElement>?> createOrModifyHealthcareElements(String patientId, List<HealthcareElement> healthcareElement) async {
    final localCrypto = api.localCrypto;
    final currentUser = await api.userApi.getCurrentUser();
    final ccHealthElement = healthElementCryptoConfig(localCrypto);
    final ccPatient = patientCryptoConfig(localCrypto);

    final healthElementToCreate = healthcareElement.where((element) => element.rev != null).toSet();
    final healthElementToUpdate = healthcareElement.toSet().difference(healthElementToCreate).toSet();

    if (healthElementToUpdate.any((element) => element.id == null || !Uuid.isValidUUID(fromString: element.id!))) {
      throw FormatException("Update id should be provided as an UUID");
    }

    final healthElementDtoToUpdate = healthElementToUpdate.map((e) => e.toHealthElementDto()).toList();
    final healthElementDtoToCreate = healthElementToCreate.map((e) => e.toHealthElementDto()).toList();

    final patient = await base_api.PatientApiCrypto(api.patientApi).getPatient(currentUser!, patientId, ccPatient) ?? (throw StateError("Patient not found"));
    final heCreated = await api.healthElementApi.createHealthElements(currentUser, patient, healthElementDtoToCreate, ccHealthElement);
    final heUpdated = await api.healthElementApi.modifyHealthElements(currentUser, healthElementDtoToUpdate, ccHealthElement);
    final heProcessed = [...?heCreated, ...heUpdated];

    return heProcessed.map((e) => e.toHealthcareElement()).toList();
  }

  @override
  Future<String?> deleteHealthcareElement(String id) async {
    return (await api.healthElementApi.rawDeleteHealthElements(base_api.ListOfIdsDto(ids: [id])))?.single.rev ??
        throwFormatException("Invalid health element id");
  }

  @override
  Future<PaginatedListHealthcareElement?> filterHealthcareElement(
    Filter filter, {
    String? nextHealthElementId,
    int? limit,
  }) async {
    final localCrypto = api.localCrypto;
    final currentUser = await api.userApi.getCurrentUser();
    final ccHealthElement = healthElementCryptoConfig(localCrypto);

    return (await api.healthElementApi.filterHealthElements(
            currentUser!, base_api.FilterChain<base_api.HealthElementDto>(filter.toAbstractFilterDto()), ccHealthElement, nextHealthElementId, limit))
        .toPaginatedListHealthcareElement();
  }

  @override
  Future<HealthcareElement?> getHealthcareElement(String id) async {
    final localCrypto = api.localCrypto;
    final currentUser = await api.userApi.getCurrentUser();
    final ccHealthElement = healthElementCryptoConfig(localCrypto);

    return (await api.healthElementApi.getHeathElement(currentUser!, id, ccHealthElement))?.toHealthcareElement();
  }

  @override
  Future<List<String>?> matchHealthcareElement(Filter filter) {
    return api.healthElementApi.rawMatchHealthElementsBy(filter.toAbstractFilterDto());
  }
}
