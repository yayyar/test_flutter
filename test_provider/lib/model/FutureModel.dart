import 'package:shared_preferences/shared_preferences.dart';

class FutureModel {
  String prefValue = "";

  Future<FutureModel> create() async {
    return FutureModel();
  }

  Future<void> setToSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("shared_pref_key", "Hello Provider");
    print("Set pref => $prefs");
  }

  Future<void> getFromSharedPreference() async {
    await Future.delayed(Duration(seconds: 2));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    this.prefValue = prefs.getString("shared_pref_key" ?? "");
  }
}
