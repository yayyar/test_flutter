import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// this class is like GetxController
// It shares the same lifecycle (onInit(), onReady(), onClose())
// It just notify GetX dependency injection system
// that this subclass cannot be remove from memory

class CounterService extends GetxService {
  Future<void> incrementCounter() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    int counter = (_preferences.getInt('counter_service') ?? 0) + 1;
    debugPrint('counter_service $counter');
    await _preferences.setInt('counter_service', counter);
  }
}
