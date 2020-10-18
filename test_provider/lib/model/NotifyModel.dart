import 'package:flutter/cupertino.dart';

class NotifyModel with ChangeNotifier {
  int count = 0;
  Map testMap = {};

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement(){
    count--;
    notifyListeners();
  }

  void addMap(){
    testMap[1] = 2;
    notifyListeners();
  }

  void clearMap(){
    testMap.clear();
    notifyListeners();
  }
}
