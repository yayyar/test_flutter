import 'package:bmi_calculator/constant/style_constant.dart';
import 'package:bmi_calculator/page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData.dark().copyWith(
          primaryColor: kAppThemeColor,
          scaffoldBackgroundColor: kAppThemeColor),
      home: const HomePage(),
    );
  }
}
