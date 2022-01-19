import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/photo_controller.dart';
import '../photo_model.dart';

class PhotoView extends GetView<PhotoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhotoView'),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) => ListView.builder(
            itemCount: state!.length,
            itemBuilder: (context, index) {
              Photo data = state[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.network(data.url!),
                  ),
                  title: Text(data.title!),
                ),
              );
            }),
        onLoading: Center(child: CircularProgressIndicator.adaptive()),
        onError: (error) => Center(
          child: Text(
            'Error: $error',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
