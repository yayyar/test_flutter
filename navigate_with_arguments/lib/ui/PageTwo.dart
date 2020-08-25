import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  static const routeName = '/pageTwo';
  final String title;
  final String message;

  const PageTwo({@required this.title, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
