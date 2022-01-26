import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageService {
  final _box = GetStorage();
  final _locale = 'locale_lang';

  // Get locale from local storage and return Locale
  Locale get locale => _loadLocaleFromBox()
      ? const Locale('my', 'MM')
      : const Locale('en', 'US');

  // load locale from local storage and if it's empty, returns false (that means default locale is en_US)
  bool _loadLocaleFromBox() => _box.read(_locale) ?? false;

  // Save locale
  _saveLocaleToBox(bool isEnUs) => _box.write(_locale, isEnUs);

  /// Switch locale and save to local storage
  void switchLanguage() {
    Get.updateLocale(_loadLocaleFromBox()
        ? const Locale('en', 'US')
        : const Locale('my', 'MM'));
    _saveLocaleToBox(!_loadLocaleFromBox());
  }
}
