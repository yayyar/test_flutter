import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'locale/app_localization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AppLocalizationDelegate _localeOverrideDelegate =
  AppLocalizationDelegate(Locale('en', 'US'));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        _localeOverrideDelegate
      ],
      supportedLocales: [
        const Locale('en','US'),
        const Locale('mm','MM')
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
            Text(
              '${AppLocalization.of(context).heyWorld} , ${AppLocalization.of(context).goodMorning}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  AppLocalization.load(Locale('en','US'));
                });
              },
              child: Text(
                'English',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  AppLocalization.load(Locale('mm','MM'));
                });
              },
              child: Text(
                'Myanmar',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
