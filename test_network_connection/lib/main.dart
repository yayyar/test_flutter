import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

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
  // Future<void> listenConnectivity() async {
  //   _connectionResult = await _connectivity.checkConnectivity();

  //   if (_connectionResult == ConnectivityResult.mobile) {
  //     // I am connected to a mobile network.
  //     log('connectivity on MOBILE DATA');
  //   } else if (_connectionResult == ConnectivityResult.wifi) {
  //     // I am connected to a wifi network.
  //     log('connectivity on WIFI');
  //   } else if (_connectionResult == ConnectivityResult.none) {
  //     // I am connected to a wifi network.
  //     log('NO INTERNET CONNECTION');
  //   }
  // }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionResult = result;
    });
    log('ConnectivityResult => $_connectionResult');
    if (_connectionResult != ConnectivityResult.none) {
      try {
        final result = await InternetAddress.lookup('google.com');
        log('result => $result');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          log('CONNECTED TO THE INTERNET');
          setState(() {
            _connectivityResult = 'CONNECTED TO THE INTERNET';
          });
        }
      } on SocketException catch (e) {
        log('NOT CONNECTED TO THE INTERNET => $e');
        setState(() {
          _connectivityResult = 'NOT CONNECTED TO THE INTERNET';
        });
      }
    } else {
      log('NO CONNECTION');
      setState(() {
        _connectivityResult = 'NO CONNECTION';
      });
    }
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
