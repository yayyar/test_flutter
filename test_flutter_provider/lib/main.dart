import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter_provider/controller/food_controller.dart';
import 'package:test_flutter_provider/model/counter_model.dart';
import 'package:test_flutter_provider/model/food_model.dart';
import 'package:test_flutter_provider/service/page/food_page.dart';
import 'package:test_flutter_provider/service/page/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterModel()),
        ChangeNotifierProvider(create: (context) => FoodControler()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  // CounterModel _counterModel = CounterModel();

  void _goToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FoodPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Consumer<FoodControler>(
        builder: (context, model, widget) {
          return ListView.builder(
              itemCount: model.foodList.length,
              itemBuilder: (context, index) {
                Food food = model.foodList[index];
                return ListTile(
                  title: Text('${food.name}'),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _goToNextPage();
        },
        tooltip: 'Go',
        child: const Icon(Icons.add),
      ),
    );
  }
}
