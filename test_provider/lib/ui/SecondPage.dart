import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/model/FutureModel.dart';
import 'package:test_provider/model/NotifyModel.dart';


class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final _notifyModel = Provider.of<NotifyModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is second page'),
            Consumer<FutureModel>(
              builder: (context, futureObject, child) {
                return OutlineButton.icon(
                    onPressed: () async {
                      await futureObject.setToSharedPreference();
                    },
                    icon: Icon(Icons.create),
                    label: Text("Write Prefs"));
              },
            ),
            RaisedButton(
              child: Text('Add map'),
              onPressed: (){
                _notifyModel.addMap();
              },
            ),
            RaisedButton(
              child: Text('Clear map'),
              onPressed: (){
                _notifyModel.clearMap();
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _notifyModel.increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
