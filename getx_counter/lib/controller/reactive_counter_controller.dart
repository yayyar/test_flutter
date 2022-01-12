import 'package:get/get.dart';

// Reactive state manager (known as GetX/Obx)
class ReactiveCounterController extends GetxController {
  var count = 0.obs;
  increase() {
    count++;
  }

  decrese() {
    count--;
  }
}
