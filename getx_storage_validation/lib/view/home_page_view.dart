import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_storage_validation/view/language_service.dart';
import 'package:getx_storage_validation/view/theme_services.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _emailTextEditingController = TextEditingController();
  final _storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _emailTextEditingController,
              ),
            ),
            ElevatedButton(
                onPressed: () => _saveEmail(), child: const Text('Save')),
            ElevatedButton(
                onPressed: () {
                  debugPrint('Storage data => ${_storage.read('email')}');
                },
                child: const Text('Read')),
            ElevatedButton(
                onPressed: () => ThemeService().switchTheme(),
                child: Text('buttons_change_theme'.tr)),
            ElevatedButton(
                onPressed: () => LanguageService().switchLanguage(),
                child: Text('buttons_change_language'.tr))
          ],
        ),
      ),
    );
  }

  _saveEmail() {
    var _emailText = _emailTextEditingController.text;
    debugPrint('Email: $_emailText');
    if (GetUtils.isEmail(_emailText)) {
      _storage.write('email', _emailText);
    } else {
      Get.snackbar('Incorrect email', 'Email is invalid format',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
