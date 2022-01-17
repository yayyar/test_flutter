import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_doc/controller/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetWidget {
  MyApp({Key? key}) : super(key: key);

  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Pattern Doc',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Pattern Doc'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // GetX< MyController>(builder: (_) => Text(_.var))
            // An important note at this point is that Containers are not considered direct children.
            // So the following example is also valid for using GetX
            // GetX< MyController>(builder: (_) => Container(child: Text(_.var)))

            // Widgets are considered heavy when they have a large hierarchy of children, as a list or complex card . In such cases, when trying to use the GetX widget to rebuild that list or card, you will get an misuse error.
            // For these cases, you can make use of Obx(() => HeavyWidget()) .
            // Where Heavy Widget is meant a List, which may have Getx Widgets for changing each element and Obx for updating the complete list.
            // Its use proves to be very efficient when combined with GetView , extending your Page, along with bindings to it, you'll see this in the more solid example of this documentation sections ahead.
            // But basically you will have an instance of your controller instead of the _ .

            // this pattern is suitable for Light Widget
            GetX<CounterController>(builder: (_) => Text(_.num.toString())),

            // this pattern is suitable for Heavy Widget
            Obx(() => Text(_counterController.num.toString())),
            SizedBox(
              height: 300,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () => _counterController.increment(),
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () => _counterController.decrement(),
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
