import 'package:flutter/material.dart';
import 'package:list_view/ui/CustomListPage.dart';
import 'package:list_view/ui/GridListPage.dart';
import 'package:list_view/ui/HorizontalListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Basic List'),
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
      // ListView constructor is perfect for lists that contain only a few items.
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0,8.0,32.0,8.0),
            child: RaisedButton(
              child: Text('Horizontal List'),
              onPressed: (){
                // Go to next screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => HorizontalListPage()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0,8.0,32.0,8.0),
            child: RaisedButton(
              child: Text('Grid List'),
              onPressed: (){
                // Go to next screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => GridListPage()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0,8.0,32.0,8.0),
            child: RaisedButton(
              child: Text('Custom List'),
              onPressed: (){
                // Go to next screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => CustomListPage(
                  items: List<ListItem>.generate(
                    1000,
                        (i) => i % 6 == 0
                        ? HeadingItem("Heading $i")
                        : MessageItem("Sender $i", "Message body $i"),
                  ),
                )));
              },
            ),
          )
        ],
      ),
    );
  }
}
