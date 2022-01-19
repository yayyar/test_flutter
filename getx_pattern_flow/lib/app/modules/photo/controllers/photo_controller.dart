import 'package:get/get.dart';
import 'package:getx_pattern_flow/app/modules/photo/providers/photo_provider.dart';

import '../photo_model.dart';

class PhotoController extends GetxController with StateMixin<List<Photo>> {
  final PhotoProvider photoProvider;
  PhotoController({required this.photoProvider});

  void getAllPhoto() {
    photoProvider.getAllPhoto().then((response) {
      List<Photo> data = response;
      change(data, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
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
