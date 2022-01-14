import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class HttpHelper {
  /// Base api uri
  static const String baseUri =
      "https://makeup-api.herokuapp.com/api/v1/products.json";

  /// GET Specific Data Map
  Future get(String uri) async {
    Map<String, String> headerOption = await getHeaderOption();
    String fullUri = baseUri + uri;
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse(fullUri),
        headers: headerOption,
      );
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw Exception('No Internet Connection');
    }
    return responseJson;
  }

  /// Prepare http header options
  Future<Map<String, String>> getHeaderOption() async {
    // String authToken = await AuthHelper().loadToken();
    Map<String, String> headerOption = {
      'Content-Type': 'application/json; charset=UTF-8',
      // HttpHeaders.authorizationHeader: authToken,
    };
    // print('http headerOption => $headerOption');
    return headerOption;
  }
}
