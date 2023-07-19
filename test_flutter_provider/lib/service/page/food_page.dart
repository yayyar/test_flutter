import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter_provider/controller/food_controller.dart';
import 'package:test_flutter_provider/model/food_model.dart';

class FoodPage extends StatelessWidget {
  FoodPage({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _foodController = Provider.of<FoodControler>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(children: [
          TextField(
            controller: _textEditingController,
          ),
          ElevatedButton(
              onPressed: () async {
                if (_textEditingController.text.isNotEmpty) {
                  Food food = Food(name: _textEditingController.text);
                  int result = await _foodController.addFood(food);
                  if (result != 0) {
                    await _foodController.getAllFoodList();
                    Navigator.pop(context);
                  }
                }
              },
              child: const Text('Add Food'))
        ]),
      ),
    );
  }
}
