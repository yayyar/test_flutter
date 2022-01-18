import 'package:flutter/material.dart';
import 'package:getx_pattern_flow/app/services/http_service.dart';

import '../user_model.dart';

class UserProvider {
  final _httpService = HttpService();
  Future<List<User>> getAllUser() async {
    var response = await _httpService.get('/users');
    // if data response is Map(Json Object, not Json Array)
    // just return
    // return response
    var data = response as List;
    // debugPrint('UserProvider => $response');
    return data.map((user) => User.fromJson(user)).toList();
  }
}
