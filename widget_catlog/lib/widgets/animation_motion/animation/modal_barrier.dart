import 'package:flutter/material.dart';

class ModalBarrierExample extends StatefulWidget {
  const ModalBarrierExample({super.key});

  @override
  _ModalBarrierExampleState createState() => _ModalBarrierExampleState();
}

class _ModalBarrierExampleState extends State<ModalBarrierExample>
    with SingleTickerProviderStateMixin {
  bool _showModalBarrier = false;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: const Color.fromARGB(200, 155, 120, 155),
      end: const Color.fromARGB(100, 127, 127, 127),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = colorTween.animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Barrier Example'),
      ),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('Show Modal Barrier'),
              onPressed: () {
                setState(() {
                  _showModalBarrier = true;
                });
              },
            ),
          ),
          if (_showModalBarrier)
            AnimatedModalBarrier(
              color: _colorAnimation,
              dismissible: true,
            ),
        ],
      ),
    );
  }
}
