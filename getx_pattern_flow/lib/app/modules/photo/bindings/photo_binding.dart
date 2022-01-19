import 'package:get/get.dart';
import 'package:getx_pattern_flow/app/modules/photo/providers/photo_provider.dart';

import '../controllers/photo_controller.dart';

class PhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhotoProvider());
    Get.lazyPut<PhotoController>(
      () => PhotoController(photoProvider: Get.find<PhotoProvider>()),
    );
  }
}
