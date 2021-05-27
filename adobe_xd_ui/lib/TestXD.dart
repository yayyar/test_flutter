import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';

class TestXD extends StatelessWidget {
  TestXD({Key? key}) : super(key: key);

  /// Pinned.fromPins() => accept horizontal and vertical pin
  ///
  /// start => draw the child's left with pixel
  /// end => draw the child's right with pixel
  ///
  /// startFraction => draw the child with percentage(%) of its parent left
  /// endFraction => draw the child with percentage(%) of its parent right
  ///
  /// middle => draw the child with percentage(%) between 0.0 and 1.0, 0.5 is middle
  ///
  /// size => child's horizontal or vertical size, draw with pixel
  ///
  ///  (OR) Another way
  ///
  /// Pinned()
  ///
  /// left, right, width, top, bottom, height => draw child with pixel
  /// fraction, middle => draw with percentage(%)
  ///
  /// left
  /// leftFraction
  ///
  /// right
  /// rightFraction
  ///
  /// width
  /// horizontalMiddle
  ///
  /// top
  /// topFraction
  ///
  /// bottom
  /// bottomFraction
  ///
  /// height
  /// verticalMiddle

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Pinned.fromPins(
          Pin(start: 30, endFraction: 0.1), // horizontal
          Pin(middle: 0.3, size: 50.0), // vertical
          child: Text("Test XD To Flutter"),
        ),
        Pinned(
          left: 30.0,
          rightFraction: 0.1,
          verticalMiddle: 0.4,
          height: 50.0,
          child: Text(
            "There are 3 ways to draw UI",
            style: TextStyle(fontFamily: 'Roboto', fontSize: 25),
          ),
        ),
        Pinned.fromSize(
          size: Size(100.0, 100.0), // nominal parent size
          bounds: Rect.fromLTWH(
              30.0, 25.0, 65.0, 50.0), // nominal child bounds w/in parent
          pinLeft: true, // use absolute pixel position on left
          // no pinRight specified, default to relative position on right
          fixedHeight:
              true, // use fixed height & middle because no top or bottom are specified
          child: Text(
            "Pinned.fromPins(), Pinned(), Pinned.fromSize()",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    ));
  }
}
