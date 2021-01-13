import 'dart:math';

import 'package:flutter/material.dart';

const _duration = Duration(milliseconds: 400);

class ShapeShift extends StatefulWidget {
  @override
  _ShapeShiftState createState() => _ShapeShiftState();
}

class _ShapeShiftState extends State<ShapeShift> {
  Color color;
  double borderRadius;
  double margin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShapeShift'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: AnimatedContainer(
                duration: _duration,
                curve: Curves.easeInOutBack,
                margin: EdgeInsets.all(margin),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('change'),
              onPressed: () => change(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    color = randomColor();
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  double randomBorderRadius() {
    return Random().nextDouble() * 64;
  }

  double randomMargin() {
    return Random().nextDouble() * 64;
  }

  Color randomColor() {
    return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
  }

  void change() {
    setState(() {
      color = randomColor();
      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }
}
