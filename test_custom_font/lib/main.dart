import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Font Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Dancing' // All App Page font
      ),
      home: MyHomePage(title: 'Custom Font Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Style One',
              style: TextStyle(
                fontFamily: 'Raleway', // can override parent Theam fontFamily
                fontSize: 40,
                fontStyle: FontStyle.normal
              ),
            ),
            Text(
              'Style Two',
              style: TextStyle(
                  fontFamily: 'Dancing',
                  fontSize: 40
              ),
            ),
            Text(
              'Google Font Style One',
              style: GoogleFonts.pacifico(fontSize: 20,color: Colors.blue),
            ),
            Text(
                'Google Font Style Two',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}

