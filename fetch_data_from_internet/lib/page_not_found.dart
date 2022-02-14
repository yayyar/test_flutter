import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        'ERROR 404',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
