import 'package:change_language/generated/intl/messages_all.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocalization {

  static Future<AppLocalization> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalization();
    });
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  // list of locales
  String get heyWorld {
    return Intl.message(
      'Hey World',
      name: 'heyWorld',
      desc: 'Simple word for greeting ',
    );
  }

  String get goodMorning {
    return Intl.message(
      'Good morning',
      name: 'goodMorning',
      desc: 'Good morning everybody ',
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization>{
  final Locale overriddenLocale;

  const AppLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => ['en', 'mm'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}