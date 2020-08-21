import 'package:flutter/material.dart';
import 'package:tab_bar/tab_component/BikeTab.dart';
import 'package:tab_bar/tab_component/CarTab.dart';
import 'package:tab_bar/tab_component/RailwayTab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab demo'),
            bottom: TabBar(
              tabs: <Widget>[
                Icon(Icons.directions_car),
                Icon(Icons.directions_railway),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              CarTab(),
              RailwayTab(),
              BikeTab(),
            ],
          ),
        ),
      ),
    );
  }
}
