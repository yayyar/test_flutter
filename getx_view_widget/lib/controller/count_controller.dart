import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CountController extends GetxController {
  var count = 0.obs;
  increment() {
    count++;
  }
}
