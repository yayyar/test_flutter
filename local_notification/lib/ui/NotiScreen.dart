import 'package:flutter/material.dart';

class NotiScreen extends StatelessWidget {
  final String payload;

  NotiScreen({this.payload});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noti Click Page'),
      ),
      body: Center(
        child: Text(payload),
      ),
    );
  }
}
