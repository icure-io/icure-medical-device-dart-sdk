# openapi
ICure Medical Device Dart SDK

## Requirements

Dart 2.12 or later

## Installation & Usage

### Pub.dev
The recommended way to get this package is through pub.dev, add the following dependency to your pubspec.yaml
```
dependencies:
  icure_medical_device_dart_sdk:
    path: /path/to/openapi
```

### Github
If you wish to get this package from Github, add the following dependency to your pubspec.yaml
```
dependencies:
  icure_medical_device_dart_sdk: ^1.0.3
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';


final api_instance = CodingApi();
final coding = Coding(); // Coding | 

try {
    final result = api_instance.createOrModifyCoding(coding);
    print(result);
} catch (e) {
    print('Exception when calling CodingApi->createOrModifyCoding: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *http://127.0.0.1:8912*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CodingApi* | [**createOrModifyCoding**](doc//CodingApi.md#createormodifycoding) | **PUT** /rest/v2/coding | Create or update a [Coding]
*CodingApi* | [**createOrModifyCodings**](doc//CodingApi.md#createormodifycodings) | **PUT** /rest/v2/coding/batch | Create or update a batch of [Coding]
*CodingApi* | [**filterCoding**](doc//CodingApi.md#filtercoding) | **POST** /rest/v2/coding/filter | Load codings from the database by filtering them using the provided [filter].
*CodingApi* | [**getCoding**](doc//CodingApi.md#getcoding) | **GET** /rest/v2/coding/{codingId} | Get a [Coding]
*CodingApi* | [**matchCoding**](doc//CodingApi.md#matchcoding) | **POST** /rest/v2/coding/match | Load coding ids from the database by filtering them using the provided [filter].
*DataSampleApi* | [**createOrModifyDataSampleFor**](doc//DataSampleApi.md#createormodifydatasamplefor) | **PUT** /rest/v2/data/sample/for/{patientId} | Create or update a [DataSample] for a patient
*DataSampleApi* | [**createOrModifyDataSamplesFor**](doc//DataSampleApi.md#createormodifydatasamplesfor) | **PUT** /rest/v2/data/sample/batch/for/{patientId} | Create or update a batch of [DataSample] for a patient
*DataSampleApi* | [**deleteAttachment**](doc//DataSampleApi.md#deleteattachment) | **DELETE** /rest/v2/data/sample/{dataSampleId}/attachment/{documentId} | Delete an attachment of a DataSample
*DataSampleApi* | [**deleteDataSample**](doc//DataSampleApi.md#deletedatasample) | **DELETE** /rest/v2/data/sample/{dataSampleId} | Delete a [DataSample] by its id
*DataSampleApi* | [**deleteDataSamples**](doc//DataSampleApi.md#deletedatasamples) | **POST** /rest/v2/data/sample/batch | Delete a batch of [Data Samples]
*DataSampleApi* | [**filterDataSample**](doc//DataSampleApi.md#filterdatasample) | **POST** /rest/v2/data/sample/filter | Find data samples using the provided [filter].
*DataSampleApi* | [**getDataSample**](doc//DataSampleApi.md#getdatasample) | **GET** /rest/v2/data/sample/{dataSampleId} | Get a [DataSample] by its id
*DataSampleApi* | [**getDataSampleAttachmentContent**](doc//DataSampleApi.md#getdatasampleattachmentcontent) | **GET** /rest/v2/data/sample/{dataSampleId}/attachment/{documentId}/{attachmentId} | Get attachment content of a DataSample
*DataSampleApi* | [**getDataSampleAttachmentDocument**](doc//DataSampleApi.md#getdatasampleattachmentdocument) | **GET** /rest/v2/data/sample/{dataSampleId}/attachment/{documentId} | Get document metadata of a DataSample attachment
*DataSampleApi* | [**matchDataSample**](doc//DataSampleApi.md#matchdatasample) | **POST** /rest/v2/data/sample/match | Find data samples ids using the provided Filter.
*DataSampleApi* | [**setDataSampleAttachment**](doc//DataSampleApi.md#setdatasampleattachment) | **PUT** /rest/v2/data/sample/{dataSampleId}/attachment | Add or update the attachment of a DataSample
*HealthcareElementApi* | [**createOrModifyHealthcareElement**](doc//HealthcareElementApi.md#createormodifyhealthcareelement) | **PUT** /rest/v2/hce | Create a Healthcare Element
*HealthcareElementApi* | [**createOrModifyHealthcareElements**](doc//HealthcareElementApi.md#createormodifyhealthcareelements) | **PUT** /rest/v2/hce/batch | Create a Healthcare Element
*HealthcareElementApi* | [**deleteHealthcareElement**](doc//HealthcareElementApi.md#deletehealthcareelement) | **DELETE** /rest/v2/hce/{id} | Delete a Healthcare Element
*HealthcareElementApi* | [**filterHealthcareElement**](doc//HealthcareElementApi.md#filterhealthcareelement) | **POST** /rest/v2/hce/filter | Find Healthcare Elements using a filter
*HealthcareElementApi* | [**getHealthcareElement**](doc//HealthcareElementApi.md#gethealthcareelement) | **GET** /rest/v2/hce/{id} | Get a Healthcare Element
*HealthcareElementApi* | [**matchHealthcareElement**](doc//HealthcareElementApi.md#matchhealthcareelement) | **POST** /rest/v2/hce/match | Find Healthcare Elements using a filter
*HealthcareProfessionalApi* | [**createOrModifyHealthcareProfessional**](doc//HealthcareProfessionalApi.md#createormodifyhealthcareprofessional) | **PUT** /rest/v2/healthcareprofessional | Create a newhealthcare professional or modify an existing one.
*HealthcareProfessionalApi* | [**deleteHealthcareProfessional**](doc//HealthcareProfessionalApi.md#deletehealthcareprofessional) | **DELETE** /rest/v2/healthcareprofessional/{hcpId} | Delete an existing healthcare professional.
*HealthcareProfessionalApi* | [**filterHealthcareProfessionalBy**](doc//HealthcareProfessionalApi.md#filterhealthcareprofessionalby) | **POST** /rest/v2/healthcareprofessional/filter | Load healthcare professionals from the database by filtering them using the provided Filter.
*HealthcareProfessionalApi* | [**getHealthcareProfessional**](doc//HealthcareProfessionalApi.md#gethealthcareprofessional) | **GET** /rest/v2/healthcareprofessional/{hcpId} | Get a Healthcare professional by id.
*HealthcareProfessionalApi* | [**matchHealthcareProfessionalBy**](doc//HealthcareProfessionalApi.md#matchhealthcareprofessionalby) | **POST** /rest/v2/healthcareprofessional/match | Loadhealthcare professional ids from the database by filtering them using the provided Filter.
*MedicalDeviceApi* | [**createOrModifyMedicalDevice**](doc//MedicalDeviceApi.md#createormodifymedicaldevice) | **PUT** /rest/v2/medical/device | Create or update a [MedicalDevice]
*MedicalDeviceApi* | [**createOrModifyMedicalDevices**](doc//MedicalDeviceApi.md#createormodifymedicaldevices) | **PUT** /rest/v2/medical/device/batch | Create or update a batch of [MedicalDevice]
*MedicalDeviceApi* | [**deleteMedicalDevice**](doc//MedicalDeviceApi.md#deletemedicaldevice) | **DELETE** /rest/v2/medical/device/{medicalDeviceId} | Delete a [MedicalDevice]
*MedicalDeviceApi* | [**deleteMedicalDevices**](doc//MedicalDeviceApi.md#deletemedicaldevices) | **POST** /rest/v2/medical/device/batch | Delete a batch of [MedicalDevice]
*MedicalDeviceApi* | [**filterMedicalDevices**](doc//MedicalDeviceApi.md#filtermedicaldevices) | **POST** /rest/v2/medical/device/filter | Load devices from the database by filtering them using the provided [filter].
*MedicalDeviceApi* | [**getMedicalDevice**](doc//MedicalDeviceApi.md#getmedicaldevice) | **GET** /rest/v2/medical/device/{medicalDeviceId} | Get a Medical Device
*MedicalDeviceApi* | [**matchMedicalDevices**](doc//MedicalDeviceApi.md#matchmedicaldevices) | **POST** /rest/v2/medical/device/match | Load medical device ids from the database by filtering them using the provided Filter.
*PatientApi* | [**createOrModifyPatient**](doc//PatientApi.md#createormodifypatient) | **PUT** /rest/v2/patient | Create or update a [Patient]
*PatientApi* | [**deletePatient**](doc//PatientApi.md#deletepatient) | **DELETE** /rest/v2/patient/{patientId} | Delete a [Patient]
*PatientApi* | [**filterPatients**](doc//PatientApi.md#filterpatients) | **POST** /rest/v2/patient/filter | Load patients from the database by filtering them using the provided [filter].
*PatientApi* | [**getPatient**](doc//PatientApi.md#getpatient) | **GET** /rest/v2/patient/{patientId} | Get a [Patient]
*PatientApi* | [**matchPatients**](doc//PatientApi.md#matchpatients) | **POST** /rest/v2/patient/match | Load patient ids from the database by filtering them using the provided [filter].
*UserApi* | [**checkTokenValidity**](doc//UserApi.md#checktokenvalidity) | **GET** /rest/v2/user/token/{userId} | Check token validity for a user.
*UserApi* | [**createOrModifyUser**](doc//UserApi.md#createormodifyuser) | **PUT** /rest/v2/user | Create a new user or modify an existing one.
*UserApi* | [**createToken**](doc//UserApi.md#createtoken) | **POST** /rest/v2/user/token/{userId} | Create a token for a user.
*UserApi* | [**deleteUser**](doc//UserApi.md#deleteuser) | **DELETE** /rest/v2/user/{userId} | Delete an existing user.
*UserApi* | [**filterUsers**](doc//UserApi.md#filterusers) | **POST** /rest/v2/user/filter | Load users from the database by filtering them using the provided Filter.
*UserApi* | [**getLoggedUser**](doc//UserApi.md#getloggeduser) | **GET** /rest/v2/user | Get the details of the logged User.
*UserApi* | [**getUser**](doc//UserApi.md#getuser) | **GET** /rest/v2/user/{userId} | Get a User by id.
*UserApi* | [**matchUsers**](doc//UserApi.md#matchusers) | **POST** /rest/v2/user/match | Load user ids from the database by filtering them using the provided Filter.


## Documentation For Models

 - [Address](doc//Address.md)
 - [AuthenticationToken](doc//AuthenticationToken.md)
 - [Coding](doc//Coding.md)
 - [CodingReference](doc//CodingReference.md)
 - [Content](doc//Content.md)
 - [DataSample](doc//DataSample.md)
 - [Delegation](doc//Delegation.md)
 - [Document](doc//Document.md)
 - [Filter](doc//Filter.md)
 - [HealthcareElement](doc//HealthcareElement.md)
 - [HealthcareProfessional](doc//HealthcareProfessional.md)
 - [Identifier](doc//Identifier.md)
 - [InlineResponse403](doc//InlineResponse403.md)
 - [Measure](doc//Measure.md)
 - [MedicalDevice](doc//MedicalDevice.md)
 - [PaginatedDocumentKeyAndIdPairObject](doc//PaginatedDocumentKeyAndIdPairObject.md)
 - [PaginatedListCoding](doc//PaginatedListCoding.md)
 - [PaginatedListDataSample](doc//PaginatedListDataSample.md)
 - [PaginatedListHealthcareElement](doc//PaginatedListHealthcareElement.md)
 - [PaginatedListHealthcareProfessional](doc//PaginatedListHealthcareProfessional.md)
 - [PaginatedListMedicalDevice](doc//PaginatedListMedicalDevice.md)
 - [PaginatedListPatient](doc//PaginatedListPatient.md)
 - [PaginatedListUser](doc//PaginatedListUser.md)
 - [Partnership](doc//Partnership.md)
 - [Patient](doc//Patient.md)
 - [PatientHealthCareParty](doc//PatientHealthCareParty.md)
 - [PersonName](doc//PersonName.md)
 - [Property](doc//Property.md)
 - [PropertyType](doc//PropertyType.md)
 - [SystemMetaDataEncrypted](doc//SystemMetaDataEncrypted.md)
 - [SystemMetaDataOwner](doc//SystemMetaDataOwner.md)
 - [SystemMetaDataOwnerEncrypted](doc//SystemMetaDataOwnerEncrypted.md)
 - [Telecom](doc//Telecom.md)
 - [TimeSeries](doc//TimeSeries.md)
 - [TypedValueObject](doc//TypedValueObject.md)
 - [User](doc//User.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author



