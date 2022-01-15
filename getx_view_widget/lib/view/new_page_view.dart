import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_view_widget/controller/counter_controller.dart';

class NewPage extends GetWidget<CounterController> {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text('Counter: ${controller.counter}')),
            ElevatedButton(
                onPressed: () {
                  debugPrint('hashCode=> ${controller.hashCode}');
                  controller.increase();
                },
                child: const Text('Increase')),
          ],
        ),
      ),
    );
  }
}
