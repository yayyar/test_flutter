import 'dart:math';

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
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue[400]!,
            Colors.blue[800]!,
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        ),
        SafeArea(
            child: Container(
          width: 200,
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/600/92c952'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: const [
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Setting',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ))
          ]),
        )),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: value),
          duration: const Duration(milliseconds: 500),
          builder: (_, double val, __) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..setEntry(0, 3, 200 * val)
                ..rotateY((pi / 6) * val), // transform 3D
              child: Scaffold(
                appBar: AppBar(
                  leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          value == 0 ? value = 1 : value = 0;
                        });
                      },
                      child: const Icon(Icons.menu)),
                  title: const Text('3D Drawer'),
                ),
                body: const Center(child: Text('Swipe right to open drawer')),
              ),
            );
          },
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              value == 0 ? value = 1 : value = 0;
            });
          },
        )
      ],
    ));
  }
}
