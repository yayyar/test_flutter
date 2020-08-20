import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            navLargeTitleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60.0,
                color: CupertinoColors.activeBlue
            ),
          )
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('Hello, iOS UI',
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,),
      ),
    );
  }
}

