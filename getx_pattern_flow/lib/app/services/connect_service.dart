import 'package:get/get.dart';

class ConnectService extends GetConnect {
  @override
  void onInit() {
    print('ConnectService onInit');
    // add your local storage here to load for every request
    // var token = LocalStorage.readToken();
    //1.base_url
    httpClient.baseUrl = "https://jsonplaceholder.typicode.com";
    //2.
    // httpClient.defaultContentType = "application/json";
    // httpClient.timeout = Duration(seconds: 8);
    // httpClient.addRequestModifier((request) async {
    //   print(request.url);
    //   print(request.method);
    //   print(request.decoder);
    //   print(request.headers);
    //   return request;
    // });
    // httpClient.addResponseModifier((request, response) async {
    //   print(request.url);
    //   print(request.method);
    //   print(response.body);
    //   print(response.status.code);
    // });
    // var headers = {'Authorization': "Bearer $token"};
    // httpClient.addAuthenticator((request) async {
    //   request.headers.addAll(headers);
    //   return request;
    // });

    super.onInit();
  }
}
