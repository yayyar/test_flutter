import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Export CSV Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Export CSV Demo'),
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
  PermissionStatus _permissionStatus = PermissionStatus.undetermined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Export CSV'),
              onPressed: (){
                requestPermission(Permission.storage);
              },
            )
          ],
        ),
      ),
    );
  }

  _exportCSV() async {

    List associateList = [
      {
        'name': 'Mg mg',
        'gender': 'Male',
        'age': 20,
      },
      {
        'name': 'Ma ma',
        'gender': 'Female',
        'age': 18,
      }
    ];

    List<List<dynamic>> rows = List<List<dynamic>>();
    for (int i = 0; i < associateList.length; i++) {
      debugPrint(associateList.toString());

      List<dynamic> row = List();
      row.add(associateList[i]['name']);
      row.add(associateList[i]['gender']);
      row.add(associateList[i]['age']);
      rows.add(row);
    }

    if (_permissionStatus.isGranted) {
      debugPrint('Rows => $rows');
      String folderName = 'csv_data';
      String folderPath = await AppUtil.createFolderInAppDocDir(folderName);
      debugPrint('FolderPath => $folderPath');

      File f = new File(folderPath + "test_csv_data.csv");
      debugPrint('File => $f');

      String csv = const ListToCsvConverter().convert(rows);
      debugPrint('CSV => $csv');

      f.writeAsString(csv);
    } else if (_permissionStatus.isDenied) {
      debugPrint('Permission denied !!');
    }
  }

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    setState(() {
      print(status);
      _permissionStatus = status;
    });
    _exportCSV();
  }
}

class AppUtil{

  static Future<String> createFolderInAppDocDir(String folderName) async {

    //Get this App Document Directory OR externalStorageDirectory
    final Directory _appDocDir = await getExternalStorageDirectory();
    debugPrint('appDir=> ${_appDocDir.parent.parent.parent.parent}');
    //App Document Directory + folder name
    final Directory _appDocDirFolder =  Directory('${_appDocDir.parent.parent.parent.parent.path}/$folderName/');

    if(await _appDocDirFolder.exists()){ //if folder already exists return path
      return _appDocDirFolder.path;
    }else{//if folder not exists create folder and then return its path
      final Directory _appDocDirNewFolder=await _appDocDirFolder.create(recursive: true);
      return _appDocDirNewFolder.path;
    }
  }

}
