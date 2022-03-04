//
// @dart=2.12

part of icure_medical_device_dart_sdk.api;

class RegistrationApi {
  RegistrationApi(this.registrationServer, this.signUpProcessId);

  final String registrationServer;
  final String signUpProcessId;

  Future<RegistrationProcess?> registerUserForPatient(
      String healthcareProfessionalId, String firstName, String lastName, String email, String recaptcha, {String? mobilePhone}) async {
    final requestId = Uuid().v4(options: {'rng': UuidUtil.cryptoRNG});
    var client = Client();
    final Response res = await client.post(Uri.parse('${registrationServer}/process/${signUpProcessId}/${requestId}'),
        headers: {'Content-Type': 'application/json'},
        body: await serializeAsync({
          'g-recaptcha-response': recaptcha,
          'firstName': firstName,
          'lastName': lastName,
          'from': email,
          'mobilePhone': mobilePhone,
          'hcpId': healthcareProfessionalId
        }));

    if (res.statusCode < 400) {
      return RegistrationProcess(requestId, email);
    }

    return null;
  }

  Future<RegistrationResult> completeRegistration(String basePath, RegistrationProcess process, String validationCode) async {
    var client = Client();
    final Response res = await client.get(Uri.parse('${registrationServer}/process/validate/${process.processId}-${validationCode}'), headers: {
      'Content-Type': 'application/json'
    });

    if (res.statusCode < 400) {
      return retry(() async {
        final api = MedTechApiBuilder()
            .withICureBasePath(basePath)
            .withUserName(process.login)
            .withPassword(validationCode)
            .withMsgGtwUrl(this.registrationServer)
            .withSignUpProcessId(this.signUpProcessId)
            .build();
        try {
          final user = await api.userApi.getLoggedUser();
          if (user == null) {
            throw FormatException("Your validation code is expired");
          }

          final token = await api.userApi.createToken(user.id!, validity: Duration(days: 3653));
          if (token == null) {
            throw FormatException("Your validation code is expired");
          }

          return RegistrationResult(MedTechApiBuilder()
              .withICureBasePath(basePath)
              .withUserName(user.id!)
              .withPassword(token)
              .withMsgGtwUrl(this.registrationServer)
              .withSignUpProcessId(this.signUpProcessId)
              .build(), token, user.id!);
        } catch (e) {
          throw FormatException("Your validation code is expired");
        }
      }, trials: 5, delay: 1000);
    }

    throw FormatException("Invalid validation code");
  }

}
