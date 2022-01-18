import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpService {
  /// Base api uri
  static const String baseUri = "https://jsonplaceholder.typicode.com";

  /// GET
  Future get(String uri) async {
    Map<String, String> headerOption = await getHeaderOption();
    String fullUri = baseUri + uri;
    // debugPrint('Full url => $fullUri');
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

  /// POST
  Future post(String uri, dynamic data) async {
    Map<String, String> headerOption = await getHeaderOption();

    print('http post => uri: $uri, data: ${jsonEncode(data)}');
    String fullUri = baseUri + uri;
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(fullUri),
          headers: headerOption, body: jsonEncode(data));
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw Exception('No Internet Connection');
    }
    return responseJson;
  }

  /// DELETE
  Future delete(String uri) async {
    Map<String, String> headerOption = await getHeaderOption();

    print('http delete => uri: $uri');
    String fullUri = baseUri + uri;
    dynamic responseJson;
    try {
      final response =
          await http.delete(Uri.parse(fullUri), headers: headerOption);
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw Exception('No Internet Connection');
    }
    return responseJson;
  }

  /// Update And Overwrite Entire Data By id
  Future put(String uri, Map<String, dynamic> data) async {
    Map<String, String> headerOption = await getHeaderOption();

    print('http put => uri: $uri, data: ${jsonEncode(data)}');
    String fullUri = baseUri + uri;
    dynamic responseJson;
    try {
      final response = await http.put(Uri.parse(fullUri),
          headers: headerOption, body: jsonEncode(data));
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw Exception('No Internet Connection');
    }
    return responseJson;
  }

  /// Update Specific Data By id , Not Overwrite Entire Data
  Future patch(String uri, Map<String, dynamic> data) async {
    Map<String, String> headerOption = await getHeaderOption();

    print('http patch => uri: $uri, data: ${jsonEncode(data)}');
    String fullUri = baseUri + uri;
    dynamic responseJson;
    try {
      final response = await http.patch(Uri.parse(fullUri),
          headers: headerOption, body: jsonEncode(data));
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
