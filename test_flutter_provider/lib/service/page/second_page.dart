import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter_provider/model/counter_model.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterModelProvider =
        Provider.of<CounterModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('ADD'),
          onPressed: () {
            counterModelProvider.incrementCounter();
          },
        ),
      ),
    );
  }
}
