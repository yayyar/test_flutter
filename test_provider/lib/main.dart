import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/model/FutureModel.dart';
import 'package:test_provider/model/SimpleModel.dart';
import 'package:test_provider/model/NotifyModel.dart';
import 'package:test_provider/ui/SecondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SimpleModel>(
          create: (context) => SimpleModel(),
        ),
        ChangeNotifierProvider<NotifyModel>(
          create: (context) => NotifyModel(),
        ),
        FutureProvider<FutureModel>(
          create: (context) => FutureModel().create(),
        )
      ],
      child: MaterialApp(
        title: 'Provider demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Provider demo'),
      ),
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
  String _pref_value = "Get Pref";
  @override
  Widget build(BuildContext context) {
    final _notifyModel = Provider.of<NotifyModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Consumer<SimpleModel>(
              builder: (context, simpleModel, child) {
                return Text("${simpleModel.appId}");
              },
            ),
            Consumer<NotifyModel>(
              builder: (context, notifyModel, child) {
                return Text('Counter: ${notifyModel.count}');
              },
            ),
            Consumer<NotifyModel>(
              builder: (context, notifyModel, child) {
                return Text('Map data: ${notifyModel.testMap.containsKey(1) ? notifyModel.testMap[1] : 0}');
              },
            ),
            Consumer<FutureModel>(
              builder: (context, futureModel, child) {
                return OutlineButton.icon(
                    onPressed: () async {
                      await futureModel.getFromSharedPreference();
                      print('Pref value => ${futureModel.prefValue}');
                      setState(() {
                        _pref_value = futureModel.prefValue;
                      });
                    },
                    icon: Icon(Icons.done),
                    label: Text("$_pref_value")
                );
              },
            ),
            RaisedButton(
              child: Text('Second screen'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _notifyModel.decrement(),
        tooltip: 'Decrement',
        child: Icon(Icons.remove),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
