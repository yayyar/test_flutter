import 'package:get/get.dart';
import 'package:getx_counter/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
  }
}
