import 'package:adobe_xd_ui/XDProfileGallery.dart';
//import 'package:adobe_xd_ui/testxd.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XD to Flutter',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("XD To Flutter"),
        ),
        body: XDProfileGallery(),
        // body: TestXD(), // Testing detail XD_api
      ),
    );
  }
}
