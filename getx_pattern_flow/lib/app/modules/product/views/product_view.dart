import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_pattern_flow/app/modules/product/photo_model.dart';
import 'package:getx_pattern_flow/app/routes/app_pages.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductView'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          // print('Count: ${controller.photoList.length}');
          return ListView.builder(
              itemCount: controller.photoList.length,
              itemBuilder: (context, index) {
                Photo _photo = controller.photoList[index];
                return InkWell(
                  onTap: () => Get.toNamed(Routes.PRODUCT_DETAIL,
                      arguments: {'url': _photo.url, 'title': _photo.title},
                      parameters: {"name": "test"}),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 140,
                            height: 100,
                            margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Hero(
                                tag: _photo.url!,
                                child: Image.network(
                                  _photo.url!,
                                  width: 140,
                                  height: 100,
                                  fit: BoxFit.fill,
                                  color: Colors.blue,
                                  colorBlendMode: BlendMode.color,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _photo.title!,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          )),
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        height: 2,
                      )
                    ],
                  ),
                );
              });
        }
      }),
    );
  }
}
