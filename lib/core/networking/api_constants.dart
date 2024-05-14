class ApiConstants {
  static const String apiBaseUrl = "https://tabibak.aboomarmediclub.com/api/";
  static const String login = "login";
  static const String signUp = "register";
  static const String forgetPassword = "password/send-mail";
  static const String checkcode = "password/check-code";
  static const String resetpassword = "password/reset";
  static const String pharmacySearch = "pharmacies?";
}

class ApiErrors {
  static const String success = "Registerhasbeensuccessfully";
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String apiLogicErorr = "api_logic_error";

  static const String ok = "Ok";
}
