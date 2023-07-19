import 'package:flutter/material.dart';
import 'package:widget_catlog/widgets/accesibility/accessibility_widget.dart';
import 'package:widget_catlog/widgets/animation_motion/animation_motion.dart';
import 'package:widget_catlog/widgets/basic/bottom_sheet_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Catlog"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Accessibility"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AccessibilityWidget();
              }));
            },
          ),
          ListTile(
            title: const Text("Bottom Sheet"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const BottomSheetWidget();
              }));
            },
          ),
          ListTile(
            title: const Text("Animation Motion"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AnimationMotion();
              }));
            },
          )
        ],
      ),
    );
  }
}
