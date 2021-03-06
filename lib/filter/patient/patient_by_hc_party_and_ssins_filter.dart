// @dart=2.12
part of icure_medical_device_dart_sdk.api;

class PatientByHcPartyAndSsinsFilter extends Filter<Patient> {
  PatientByHcPartyAndSsinsFilter({this.description, this.ssins, this.healthcarePartyId});

  @override
  String? description;
  List<String>? ssins;
  String? healthcarePartyId;
}
