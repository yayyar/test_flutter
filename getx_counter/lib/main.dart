import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/binding/home_binding.dart';
import 'package:getx_counter/utils/translation_message.dart';
import 'package:getx_counter/view/home_page.dart';
import 'package:getx_counter/view/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // turning it into GetMaterialApp
    return GetMaterialApp(
      translations: TranslationMessage(),
      locale: const Locale('mm', 'MM'),
      fallbackLocale: const Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      initialRoute: '/home',
      // route and add binding to inject dependency
      getPages: [
        GetPage(name: '/home', page: () => HomePage(), binding: HomeBinding()),
        GetPage(name: '/detail', page: () => NewPage()),
      ],
    );
  }
}
