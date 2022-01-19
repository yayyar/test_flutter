import 'package:get/get.dart';
import 'package:getx_pattern_flow/app/services/connect_service.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ConnectService>(() => ConnectService());
  }
}
