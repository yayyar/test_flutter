import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedController extends GetxController {
  void incrementCounter() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    int counter = (_preferences.getInt('counter') ?? 0) + 1;
    debugPrint('Counter $counter');
    await _preferences.setInt('counter', counter);
  }
}
