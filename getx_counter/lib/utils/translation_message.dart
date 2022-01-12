import 'package:get/get.dart';

class TranslationMessage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'hi': 'Hi @name', // with parameter
        },
        'de_DE': {
          'hello': 'Hallo Welt',
          'hi': 'Ha @name',
        },
        'mm_MM': {
          'hello': 'မင်္ဂလာပါ',
          'hi': 'ဟေ့ @name',
        }
      };
}
