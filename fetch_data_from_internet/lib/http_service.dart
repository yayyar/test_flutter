import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class HttpService {
  /// Base api uri
  static const String baseUri = "https://jsonplaceholder.typicode.com";

  /// GET
  Future get(String uri) async {
    Map<String, String> headerOption = await getHeaderOption();
    String fullUri = baseUri + uri;
    print('Full url => $fullUri');
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse(fullUri),
        headers: headerOption,
      );
      responseJson = jsonDecode(response.body);
    } on SocketException {
      // Get.snackbar('Network connection fail!', 'Please, Try again');
      throw Exception('No Internet Connection');
    }
    return responseJson;
  }

  /// Prepare http header options
  Future<Map<String, String>> getHeaderOption() async {
    Map<String, String> headerOption = {
      'Content-Type': 'application/json; charset=UTF-8',
      // HttpHeaders.authorizationHeader: "Basic $authToken",
    };
    // print('http headerOption => $headerOption');
    return headerOption;
  }
}
