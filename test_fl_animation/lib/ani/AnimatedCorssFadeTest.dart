import 'package:flutter/material.dart';

class AnimatedCrossFadeTest extends StatefulWidget {
  @override
  _AnimatedCrossFadeTestState createState() => _AnimatedCrossFadeTestState();
}

class _AnimatedCrossFadeTestState extends State<AnimatedCrossFadeTest> {
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Cross Fade"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            duration: const Duration(seconds: 2),
            firstChild: const FlutterLogo(
                style: FlutterLogoStyle.horizontal, size: 100.0),
            secondChild:
                const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
            crossFadeState:
                _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _first = !_first;
                });
              },
              child: Text("Animate"))
        ],
      )),
    );
  }
}
