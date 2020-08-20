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
              fontSize: 30.0,
              color: CupertinoColors.activeBlue),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var items = {0: 'Articles', 1: 'Views'};
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            activeIcon: Icon(CupertinoIcons.book_solid),
            title: Text('Articles'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.eye),
            activeIcon: Icon(CupertinoIcons.eye_solid),
            title: Text('Views'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text(items[index]),
          ),
          child: Center(
            child: Text(
              'This is tab #$index',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
          ),
        );
      },
    );
  }
}
