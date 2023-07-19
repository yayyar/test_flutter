import 'package:flutter/material.dart';
import 'package:widget_catlog/widgets/animation_motion/animation/animated_align.dart';
import 'package:widget_catlog/widgets/animation_motion/animation/animated_builder.dart';
import 'package:widget_catlog/widgets/animation_motion/animation/modal_barrier.dart';

import 'animation/animated_list.dart';

class AnimationMotion extends StatefulWidget {
  const AnimationMotion({super.key});

  @override
  State<AnimationMotion> createState() => _AnimationMotionState();
}

class _AnimationMotionState extends State<AnimationMotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Motion"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text("Animated Align"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const AnimatedAlignExample()));
              },
            ),
            ListTile(
              title: const Text("Animated Builder"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const AnimatedBuilderExample()));
              },
            ),
            ListTile(
              title: const Text("Animated List"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const AnimatedListExample()));
              },
            ),
            ListTile(
              title: const Text("Animated Modal Barrier"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const ModalBarrierExample()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
