import 'package:fetch_data_from_internet/album_provider.dart';
import 'package:fetch_data_from_internet/check_network_status.dart';
import 'package:fetch_data_from_internet/page_not_found.dart';
import 'package:flutter/material.dart';

import 'data_modal/Album.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Album>? albumList = [];
  bool isLoading = true;

  getAlbumList() async {
    setState(() {
      isLoading = true;
    });
    bool canAccess = await CheckNetworkStatus().checkNetwork();
    if (!canAccess) {
      print('Can\'t access network');
      setState(() {
        isLoading = false;
      });
      return;
    }
    var data = await AlbumProvider().getAlbumList();
    setState(() {
      albumList = data;
      isLoading = false;
    });
    print(albumList);
  }

  @override
  void initState() {
    super.initState();
    getAlbumList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
            child: isLoading
                ? CircularProgressIndicator()
                : albumList!.length <= 0
                    ? InkWell(
                        child: Text('Try again'),
                        onTap: getAlbumList,
                      )
                    : ListView.builder(
                        itemCount: albumList!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(albumList![index].title ?? ''),
                          );
                        })),
      ),
    );
  }
}
