import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_flow/app/modules/home/providers/user_provider.dart';
import 'package:getx_pattern_flow/app/modules/home/user_model.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  var userList = <User>[].obs;
  final _userProvider = UserProvider();

  Future<void> getAllUser() async {
    try {
      isLoading(true);
      var user = await _userProvider.getAllUser();
      // debugPrint('HomeController =>\n $user');
      userList.assignAll(user);
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    getAllUser();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
