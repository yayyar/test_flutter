import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:getx_counter/binding/home_binding.dart';
import 'package:getx_counter/controller/shared_controller.dart';
import 'package:getx_counter/services/counter_service.dart';
import 'package:getx_counter/utils/translation_message.dart';
import 'package:getx_counter/view/home_page.dart';
import 'package:getx_counter/view/new_page.dart';

Future<void> main() async {
  FlutterNativeSplash.removeAfter(initialization);
  await initService();
  runApp(const MyApp());
}

void initialization(BuildContext context) async {
  // This is where you can initialize the resources needed by your app while
  // the splash screen is displayed.  Remove the following example because
  // delaying the user experience is a bad design practice!
  // ignore_for_file: avoid_print
  print('ready in 3...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 2...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 1...');
  await Future.delayed(const Duration(seconds: 1));
  print('go!');
}

// service
Future<void> initService() async {
  debugPrint("starting service....");
  await Get.putAsync(() async => await CounterService());
  debugPrint("all service started");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // My Controller instance will be created even if it is not used
    // tag will be used to find the instance with tag name
    // Controller disposed when it is not used but if permanent is true the instance will be alive throughout the app
    // (1)=> MyController myController = Get.put (MyController (), tag: 'instancel', permanent: true) ;

    // Instance will be created when it is used
    // It (fenix) is similar to "permanent", the difference is that the instance is discarded when is not being used,
    // but when it's use is needed again, Get will recreate the instance needed again,
    // (2)=> Get.lazyPut (() => MyController(), tag: 'instance2', fenix: true) ;
    // (3)=> Get.putAsync<MyController>(() async => await MyController());

    // Here permanent will be true by default and isSingleton is false
    // Get.create<MyController>(() => MyController());

    // controller
    Get.putAsync<SharedController>(() async => await SharedController());

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
