import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "RBDM",
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  ));
}
