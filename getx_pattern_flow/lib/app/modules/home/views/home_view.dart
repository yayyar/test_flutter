import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_pattern_flow/app/modules/home/user_model.dart';
import 'package:getx_pattern_flow/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          print('Count: ${controller.userList.length}');
          return ListView.builder(
              itemCount: controller.userList.length,
              itemBuilder: (context, index) {
                User _user = controller.userList[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(_user.name![0]),
                  ),
                  title: Text('${_user.name}'),
                  onTap: () => Get.toNamed(Routes.PRODUCT),
                );
              });
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.getAllUser(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
