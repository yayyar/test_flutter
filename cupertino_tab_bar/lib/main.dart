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
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(items[index]),
              ),
              child: Center(
                child: CupertinoButton(
                  child: Text(
                    'This is tab #$index',
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .navLargeTitleTextStyle,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      _createPageRoute(items[index]),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  CupertinoPageRoute _createPageRoute(String topic) {
    return CupertinoPageRoute(
      builder: (context) => DetailsScreen(topic),
    );
  }
}

class DetailsScreen extends StatefulWidget {
  final String topic;

  DetailsScreen(this.topic);

  @override
  _DetailsScreenState createState() => _DetailsScreenState(topic);
}

class _DetailsScreenState extends State<DetailsScreen> {
  final String topic;
  _DetailsScreenState(this.topic);
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Details'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Details for $topic'),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('A switch'),
                  ),
                  CupertinoSwitch(
                    value: switchValue,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        switchValue = value;
                      });
                    },
                  )
                ],
              ),
            ),
            CupertinoButton(
              borderRadius: BorderRadius.circular(30.0),
              color: CupertinoColors.activeBlue,
              child: Text('Launch action sheet'),
              onPressed: () {
                print('Launch action sheet');
                showCupertinoModalPopup<int>(
                  context: context,
                  builder: (context) {
                    return showActionSheet(context);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  CupertinoActionSheet showActionSheet(BuildContext context) {
    return CupertinoActionSheet(
      title: Text('Select'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context, 1),
          child: Text('One'),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
            onPressed: () => Navigator.pop(context, 2), child: Text('Two')),
        CupertinoActionSheetAction(
            onPressed: () => Navigator.pop(context, 3), child: Text('Three')),
      ],
    );
  }
}
