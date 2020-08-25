import 'package:flutter/material.dart';
import 'package:navigate_with_arguments/model/ScreenArguments.dart';

class PageOne extends StatelessWidget {
  static const routeName = '/pageOne';
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
