import 'dart:developer';
import 'dart:ffi';

import 'package:database_test/services/database_service.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DatabaseService databaseService = DatabaseService();
  final TextEditingController _textEditingController = TextEditingController();

  Future<void> insert() async {
    String nameStr = _textEditingController.text;
    if (nameStr.isNotEmpty) {
      databaseService.insertData(nameStr);
    }
  }

  Future<void> select() async {
    var selectData = await databaseService.selectData();
    log('selectData => $selectData');
  }

  Future<void> update() async {
    String nameStr = _textEditingController.text;
    if (nameStr.isNotEmpty) {
      var updateData = await databaseService.updateData(1, nameStr);
      log('updateData => $updateData');
    }
  }

  Future<void> delete() async {
    String idStr = _textEditingController.text;
    if (idStr.isNotEmpty) {
      var deleteData = await databaseService.deleteData(int.parse(idStr));
      log('deleteData => $deleteData');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _textEditingController,
              ),
              ElevatedButton(
                  onPressed: () {
                    insert();
                  },
                  child: const Text('Insert')),
              ElevatedButton(
                  onPressed: () {
                    select();
                  },
                  child: const Text('Select')),
              ElevatedButton(
                  onPressed: () {
                    update();
                  },
                  child: const Text('Update')),
              ElevatedButton(
                  onPressed: () {
                    delete();
                  },
                  child: const Text('Delete')),
            ],
          ),
        ),
      ),
    );
  }
}
