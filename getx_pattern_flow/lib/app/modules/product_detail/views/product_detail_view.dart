import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductDetailView'),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: Get.arguments['url'],
                  child: Image.network(
                    Get.arguments['url'],
                    width: 140,
                    height: 100,
                    fit: BoxFit.fill,
                    color: Colors.blue,
                    colorBlendMode: BlendMode.color,
                  ),
                )),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Title: ${Get.arguments['title']}',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          // Text(
          //   'Name: ${Get.parameters['name']}',
          //   style: TextStyle(fontSize: 20),
          // ),
        ],
      ),
    );
  }
}
