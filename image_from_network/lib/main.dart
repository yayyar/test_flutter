import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_from_network/ui/PageOne.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image from network',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Image from network'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              // To work with images from a URL, use the Image.network() constructor.
              child: Image.network(
                'https://picsum.photos/250?image=9',
                height: 100.0,
              ),
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
            ),

            //FadeInImage works with images of any type: in-memory, local assets, or images from the internet.
            //local assets
            FadeInImage.assetNetwork(
              placeholder: 'images/circular_progress_indicator_small.gif',
              image:
              'https://picsum.photos/250?image=15',
              height: 100.0,
            ),

            //in-memory
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  'https://picsum.photos/250?image=10',
              height: 100.0,
            ),

            //cache images as they’re downloaded from the network
            //cache image can be used in offline state
            CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl:
              'https://picsum.photos/250?image=16',
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => PageOne(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero; // can be use like that Offset(0.0,0.0)
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        });
  }
}
