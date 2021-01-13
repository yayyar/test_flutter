import 'package:flutter/material.dart';
import 'package:test_fl_animation/ani/FadeIn.dart';
import 'package:test_fl_animation/ani/ShapeShift.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FadeIn()));
              },
              child: Text("FadeIn"),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShapeShift()));
              },
              child: Text("ShapeShift"),
            ),
          ],
        ),
      ),
    );
  }

}
