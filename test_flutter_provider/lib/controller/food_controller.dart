import 'package:flutter/material.dart';
import 'package:test_flutter_provider/service/database_service.dart';
import 'package:test_flutter_provider/model/food_model.dart';

class FoodControler with ChangeNotifier {
  final _DatabaseService = DatabaseService();

  final List<Food> _foodList = [];
  List<Food> get foodList => _foodList;

  Future<int> addFood(Food foodData) async {
    // convert FoodData Class to Map
    Map<String, dynamic> mapData = foodData.toMap();
    int insertResult = await _DatabaseService.insertData(mapData);
    return insertResult;
  }

  Future<void> getAllFoodList() async {
    clearFoodList();
    var rawFoodList = await _DatabaseService.selectAllData();
    for (var element in rawFoodList) {
      _foodList.add(Food.fromMap(element));
    }
    notifyListeners();
  }

  void clearFoodList() {
    _foodList.clear();
  }
}
