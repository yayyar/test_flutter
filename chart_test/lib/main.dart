import 'package:chart_test/ui/BarChartSample2.dart';
import 'package:chart_test/ui/BarChartSample3.dart';
import 'package:chart_test/ui/CustomBarChart.dart';
import 'package:chart_test/ui/CustomPieChart.dart';
import 'package:chart_test/ui/PieChartSample1.dart';
import 'package:chart_test/ui/PieChartSample2.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Demo',
      showPerformanceOverlay: false,
      theme: ThemeData(
        primaryColor: const Color(0xff262545),
        primaryColorDark: const Color(0xff201f39),
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Chart Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final title;
  MyHomePage({this.title});
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
      body: ListView(
        children: [
//          PieChartSample1(),
//          PieChartSample2(),
          CustomPieChart(),
          CustomBarChart(),
//          BarChartSample2(),
//          BarChartSample3(),
        ],
      ),
    );
  }
}
