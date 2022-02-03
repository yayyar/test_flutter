import 'package:bluetooth_print_test/print_view.dart';
import 'package:flutter/material.dart';

import 'number_format.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> data = [
    {"name": "Apple", "price": 3, "qty": 4},
    {"name": "Orange", "price": 2, "qty": 5},
    {"name": "Mango", "price": 5, "qty": 1},
    {"name": "Blueberry", "price": 6, "qty": 2},
  ];

  @override
  Widget build(BuildContext context) {
    int? _total = 0;
    _total = data
        .map((item) => item['price'] * item['qty'])
        .reduce((value, element) => value + element);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter - Thermal Printer'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        data[index]['name'],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(numberFormat.format(data[index]['price']) +
                          'x' +
                          data[index]['qty'].toString()),
                      trailing: Text(numberFormat
                          .format(data[index]['price'] * data[index]['qty'])
                          .toString()),
                    );
                  })),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  'Total: ${numberFormat.format(_total)}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 80,
                ),
                Expanded(
                    child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => PrintView(data: data)));
                  },
                  icon: const Icon(Icons.print),
                  label: const Text('Print'),
                  style: TextButton.styleFrom(
                      primary: Colors.white, backgroundColor: Colors.green),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
