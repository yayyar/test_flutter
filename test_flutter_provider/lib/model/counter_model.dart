import 'dart:developer';

import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  incrementCounter() {
    _counter++;
    notifyListeners();
    log('counterValue => $counter');
  }
}
