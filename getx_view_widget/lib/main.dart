import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_view_widget/controller/count_controller.dart';
import 'package:getx_view_widget/view/new_page_view.dart';

import 'controller/counter_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView<CountController> {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CountController()); // suitable with both GetView and GetWidget
    Get.create(() => CounterController()); // only GetWidget
    return GetMaterialApp(
      title: 'Get View Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get View Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('Count : ${controller.count}')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    debugPrint('hashCode=> ${controller.hashCode}');
                    controller.increment();
                  },
                  child: const Text('Increase')),
              ElevatedButton(
                  onPressed: () => Get.to(const NewPage()),
                  child: const Text('New page'))
            ],
          ),
        ),
      ),
    );
  }
}
