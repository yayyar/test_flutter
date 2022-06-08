import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _mainDataList = List<int>.generate(50, (i) => i + 1);

  var _currentPageDataList = [];

  final int _offset = 15;
  var _endIndex = 0;

  @override
  void initState() {
    _loadDataList();
    super.initState();
  }

  _loadDataList() {
    if (_offset < _mainDataList.length) {
      _endIndex += _offset;
      if (_endIndex > _mainDataList.length) {
        _endIndex = _mainDataList.length;
      }
    }
    log('endIndex => $_endIndex');
    setState(() {
      _currentPageDataList = _mainDataList.sublist(0, _endIndex);
    });
    log('_currentPageDataList => $_currentPageDataList');
  }

  bool _onEndScroll(ScrollMetrics metrics) {
    _loadDataList();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Page Scroll"),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollEndNotification) {
            return _onEndScroll(scrollNotification.metrics);
          }
          return true;
        },
        child: ListView.builder(
          itemCount: _currentPageDataList.length,
          itemBuilder: (context, index) {
            return Card(
              child:
                  ListTile(title: Text("Data: ${_currentPageDataList[index]}")),
            );
          },
        ),
      ),
    );
  }
}
