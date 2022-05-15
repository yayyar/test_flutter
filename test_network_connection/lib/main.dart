import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:system_settings/system_settings.dart';

void main() {
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
  final Connectivity _connectivity = Connectivity();
  ConnectivityResult _connectionResult = ConnectivityResult.none;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String _connectivityResult = 'NO CONNECTED TO THE INTERNET';

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionResult = result;
    });
    // log('ConnectivityResult => $_connectionResult');
    if (_connectionResult != ConnectivityResult.none) {
      try {
        final result = await InternetAddress.lookup('google.com');
        // log('result => $result');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          // log('CONNECTED TO THE INTERNET');
          setState(() {
            _connectivityResult = 'CONNECTED TO THE INTERNET';
          });
        } else {
          _showAlertDialog(context);
        }
      } on SocketException catch (e) {
        log('NOT CONNECTED TO THE INTERNET => $e');
        setState(() {
          _connectivityResult = 'NOT CONNECTED TO THE INTERNET';
        });
        _showAlertDialog(context);
      }
    } else {
      // log('NO CONNECTION');
      setState(() {
        _connectivityResult = 'NO CONNECTION';
      });
      _showAlertDialog(context);
    }
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('No Internet Connection'),
        content:
            const Text('Turn on cellular data or use Wi-Fi to access data.'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
              SystemSettings.wireless();
            },
            child: const Text('Settings'),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    super.initState();
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '$_connectionResult',
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            _connectivityResult,
          ),
        ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
