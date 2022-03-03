import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocaleService {
  final _box = GetStorage();
  final _key = 'locale_ley';

  // Get locale from local storage and return Locale
  Locale get locale => _loadLocaleFromBox();

  // load locale from local storage and if it's empty, returns false (that means default locale is en_US)
  Locale _loadLocaleFromBox() {
    if (_box.read(_key) == null) {
      return const Locale('en', 'US');
      // print('null locale');
    } else {
      var data = _box.read(_key);
      Locale _locale = Locale(data['languageCode'], data['countryCode']);
      // print('Data => $data');
      // print('Data JJ => ${data['languageCode']}');
      return _locale;
    }
  }

  // Save locale
  _saveLocaleToBox(Locale _locale) {
    print('Locale => $_locale');
    print('Language Code => ${_locale.languageCode}');
    print('Country Code => ${_locale.countryCode}');
    Map<String, String> _lang = {
      "languageCode": _locale.languageCode,
      "countryCode": _locale.countryCode!
    };
    _box.write(_key, _lang);
  }

  /// Switch locale and save to local storage
  void switchLanguage(Locale _locale) {
    // Get.updateLocale(_loadLocaleFromBox()
    //     ? const Locale('en', 'US')
    //     : const Locale('my', 'MM'));
    // _saveLocaleToBox(!_loadLocaleFromBox());
    if (_locale.languageCode != _loadLocaleFromBox().languageCode) {
      _saveLocaleToBox(_locale);
      Get.updateLocale(_loadLocaleFromBox());
    }
  }
}
