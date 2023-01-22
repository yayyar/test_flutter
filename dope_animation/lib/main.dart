import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dope Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dope Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  bool isBookmarked = false;
  late final Future<LottieComposition> _composition;

  @override
  void initState() {
    _composition = _loadComposition();
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    super.initState();
  }

  Future<LottieComposition> _loadComposition() async {
    var assetData =
        await rootBundle.load('assets/animations/35193-delivery.json');
    return await LottieComposition.fromByteData(assetData);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            SizedBox(
                height: 200,
                child: Lottie.asset("assets/animations/35193-delivery.zip")),
            SizedBox(
                height: 100,
                child:
                    Lottie.asset("assets/animations/90398-check-green.json")),
            SizedBox(
              height: 250,
              child: FutureBuilder<LottieComposition>(
                  future: _composition,
                  builder: (context, snapshot) {
                    var composition = snapshot.data;
                    if (composition != null) {
                      return Lottie(composition: composition);
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
            GestureDetector(
              onTap: () {
                if (!isBookmarked) {
                  _animationController.forward();
                  isBookmarked = true;
                } else {
                  _animationController.reverse();
                  isBookmarked = false;
                }
              },
              child: LottieBuilder.network(
                "https://assets7.lottiefiles.com/packages/lf20_xdfeea13.json",
                controller: _animationController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
