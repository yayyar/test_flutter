import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_storage_validation/generated/locales.g.dart';
import 'package:getx_storage_validation/view/home_page_view.dart';
import 'package:getx_storage_validation/view/language_service.dart';
import 'package:getx_storage_validation/view/locale_service.dart';
import 'package:getx_storage_validation/view/theme_services.dart';
import 'package:getx_storage_validation/view/themes.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      translationsKeys: AppTranslation.translations,
      // locale: LanguageService().locale,
      locale: LocaleService().locale,
      fallbackLocale: const Locale('en', 'US'),
      home: HomePage(),
    );
  }
}
