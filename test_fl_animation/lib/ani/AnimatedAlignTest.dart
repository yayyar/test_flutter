import 'package:flutter/material.dart';

class AnimatedAlignTest extends StatefulWidget {
  @override
  _AnimatedAlignTestState createState() => _AnimatedAlignTestState();
}

class _AnimatedAlignTestState extends State<AnimatedAlignTest> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedAlign Test"),
      ),
      body: GestureDetector(
        onTap: (){
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.red,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: 50,),
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );
  }
}
