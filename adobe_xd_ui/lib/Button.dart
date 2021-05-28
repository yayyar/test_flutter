import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class Button extends StatelessWidget {
  Button({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: -30.0, end: -29.0),
          Pin(start: -12.0, end: -12.0),
          child:
              // Adobe XD layer: 'Button' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: const Color(0xffea6f16),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 23.0, middle: 0.5),
          child: Text(
            'Shop the collection',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
