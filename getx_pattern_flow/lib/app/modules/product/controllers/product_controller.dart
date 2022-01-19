import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_flow/app/modules/product/photo_model.dart';
import 'package:getx_pattern_flow/app/modules/product/providers/photo_provider.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var photoList = <Photo>[].obs;
  final _photoProvider = Get.find<PhotoProvider>();

  Future<void> getAllPhoto() async {
    try {
      isLoading(true);
      var photo = await _photoProvider.getAllPhoto();
      debugPrint('ProductController =>\n $photo');
      photoList.assignAll(photo);
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    getAllPhoto();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
