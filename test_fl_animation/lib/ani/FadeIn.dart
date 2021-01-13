import 'package:flutter/material.dart';

const owl_url =
    'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class FadeIn extends StatefulWidget {
  @override
  _FadeInState createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> {
  double opacityLevel = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeIn"),
      ),
      body: Column(children: [
        Image.network(owl_url),
        TextButton(
            child: Text(
              'Show details',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onPressed: (){
              setState(() {
                opacityLevel = 1;
              });
            }),
        AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: opacityLevel,
          child: Column(
            children: [
              Text('Type: Owl'),
              Text('Age: 39'),
              Text('Employment: None'),
            ],
          ),
        )
      ]),
    );
  }
}
