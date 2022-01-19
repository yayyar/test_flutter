import 'package:get/get.dart';
import 'package:getx_pattern_flow/app/modules/product/providers/photo_provider.dart';

import '../controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(
      () => ProductController(),
    );
    Get.lazyPut(() => PhotoProvider());
  }
}
