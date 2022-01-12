import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/controller/reactive_counter_controller.dart';
import 'package:getx_counter/controller/simple_counter_controller.dart';
import 'package:getx_counter/services/api_service.dart';

class NewPage extends StatelessWidget {
  NewPage({Key? key}) : super(key: key);

  // access dependency
  final SimpleCounterController _simpleCounterController = Get.find();
  final _reactiveCounterController = Get.find<ReactiveCounterController>();
  final _apiService = Get.find<ApiService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: GetBuilder<SimpleCounterController>(
            init: SimpleCounterController(),
            builder: (value) {
              return Text(
                'Simple Count: ${value.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            },
          )),
          // Reactive state manager (known as GetX/Obx)
          // with GetX
          Center(
            child: GetX<ReactiveCounterController>(
              init: ReactiveCounterController(),
              builder: (value) {
                return Text(
                  'GetX Count: ${value.count}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ),
          Center(
              // reactive state manager with Obx
              child: Obx(() => Text(
                    "Obx Count: ${_reactiveCounterController.count}",
                    style: Theme.of(context).textTheme.headline4,
                  ))),
          Center(
            child: ElevatedButton(
              child: const Text('Decrease'),
              onPressed: () => _reactiveCounterController.decrese(),
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Back'),
              onPressed: () => Get.back(),
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Click'),
              onPressed: () {
                debugPrint(_apiService.fetchTextFromApi());
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () => _simpleCounterController.decrese(),
      ),
    );
  }
}
