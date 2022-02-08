import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:getx_counter/controller/reactive_counter_controller.dart';
import 'package:getx_counter/controller/shared_controller.dart';
import 'package:getx_counter/controller/simple_counter_controller.dart';
import 'package:getx_counter/services/api_service.dart';
import 'package:getx_counter/services/counter_service.dart';
// import 'package:getx_counter/view/new_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // inject dependency
  // final _apiService = Get.put(ApiService());

  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final SimpleCounterController _simpleCounterController =
      Get.put(SimpleCounterController());

  final ReactiveCounterController _reactiveCounterController =
      Get.put(ReactiveCounterController());

  // access dependency
  final _apiService = Get.find<ApiService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: ListView(
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('GetX Widget'),
              onPressed: () {
                // Get.defaultDialog(title: 'This is dialog');
                Get.snackbar("Title", "This is a snackbar",
                    snackPosition: SnackPosition.BOTTOM);
              },
            ),
          ),
          Center(
              // Simple state manager (known as GetBuilder)
              child: GetBuilder<SimpleCounterController>(
            // initState: (state) => _simpleCounterController.increase(),
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
          const Icon(FontAwesome.diamond),
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
              child: const Text('Increase'),
              onPressed: () => _reactiveCounterController.increase(),
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('GoTo'),
              // onPressed: () => Get.to(const NewPage()),
              onPressed: () => Get.toNamed('/detail'),
            ),
          ),
          Center(
            child: Text('hello'.tr),
          ),
          Center(
            child: Text('hi'.trParams({'name': 'Mgmg'})),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Change EN lang'),
              onPressed: () {
                Locale _locale = const Locale('en', 'US');
                Get.updateLocale(_locale);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Change MM lang'),
              onPressed: () {
                Locale _locale = const Locale('mm', 'MM');
                Get.updateLocale(_locale);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Change System lang'),
              onPressed: () {
                Locale? _locale = Get.deviceLocale;
                Get.updateLocale(_locale!);
              },
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
          Center(
            child: ElevatedButton(
                child: const Text('Click me'),
                onPressed: () =>
                    Get.find<SharedController>().incrementCounter()),
          ),
          Center(
            child: ElevatedButton(
                child: const Text('Click Service'),
                onPressed: () => Get.find<CounterService>().incrementCounter()),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _simpleCounterController.increase(),
      ),
    );
  }
}
