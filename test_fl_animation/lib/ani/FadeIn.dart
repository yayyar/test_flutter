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
              opacityLevel == 0.0 ?  'Show details' : 'Show less',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onPressed: (){
              setState(() {
                opacityLevel = opacityLevel == 0.0 ? 1.0 : 0.0;
              });
            }),
        AnimatedOpacity(
          duration: Duration(seconds: 1),
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
