part of swagger.api;

class ApiException implements Exception {
  int code = 0;
  late String message;// = null;
  late Exception innerException;// = null;
  late StackTrace stackTrace;// = null;

  ApiException(this.code, this.message);

  ApiException.withInner(this.code, this.message, this.innerException, this.stackTrace);

  String toString() {
    if (message == null) return "ApiException";

    if (innerException == null) {
      return "ApiException $code: $message";
    }

    return "ApiException $code: $message (Inner exception: ${innerException})\n\n" +
        stackTrace.toString();
  }
}
