import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gif Image'),
      ),
      body: Center(
        //supports animated gifs.
        child: Image.network(
          'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true',
          height: 400.0,
        ),
      ),
    );
  }
}