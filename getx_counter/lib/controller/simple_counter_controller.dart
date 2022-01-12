import 'package:get/get.dart';

// Simple state manager (known as GetBuilder)
class SimpleCounterController extends GetxController {
  var count = 0;
  increase() {
    count++;
    update();
  }

  decrese() {
    count--;
    update();
  }
}
