// import 'package:betfair_api/api/default_api.dart';
import 'package:betfair_api/api.dart';

/// Creates Dio Options for initializing a Dio client.
///

/// Creates an instance of the backend API with default options.
void createMyApi() {
  final api = DefaultApi();
  final requestMessage =
      AllRequestTypesExample(); // AllRequestTypesExample | Requests are sent to socket

  try {
    final response = api.requestPost(requestMessage);
    print(response);
  } catch (e) {
    print("Exception when calling DefaultApi->requestPost: $e\n");
  }
}
