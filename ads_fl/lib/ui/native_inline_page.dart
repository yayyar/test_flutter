import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ads_fl/ad_helper.dart';

//https://jsonplaceholder.typicode.com/photos

class NativeInlinePage extends StatefulWidget {
  const NativeInlinePage({Key? key}) : super(key: key);

  @override
  _NativeInlinePageState createState() => _NativeInlinePageState();
}

class _NativeInlinePageState extends State<NativeInlinePage> {
  bool _isLoading = true;

  static final _kAdIndex = 4;
  late NativeAd _ad;
  bool _isAdLoaded = false;

  var url = Uri.https('jsonplaceholder.typicode.com', '/photos');
  late List jsonResponse;
  void _getPhotos() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        _isLoading = false;
        jsonResponse = convert.jsonDecode(response.body);
      });

      //load native ads
      _ad = NativeAd(
        adUnitId: AdHelper.nativeAdUnitId,
        factoryId: 'listTile',
        request: AdRequest(),
        listener: NativeAdListener(
          onAdLoaded: (_) {
            setState(() {
              _isAdLoaded = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            // Releases an ad resource when it fails to load
            ad.dispose();

            print('Ad load failed (code=${error.code} message=${error.message})');       },
        ),
      );

      await _ad.load();

    } else {
      setState(() {
        _isLoading = true;
      });
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    _getPhotos();
  }

  @override
  void dispose() {
    super.dispose();
    _ad.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner Ads Inline'),
      ),
      body: Container(
        child: _isLoading
            ? Center(
          child: SizedBox(
            width: 48.0,
            height: 48.0,
            child: CircularProgressIndicator(),
          ),
        )
            : ListView.builder(
            itemCount: jsonResponse.length + (_isAdLoaded ? 1 : 0),
            itemBuilder: (context, index) {

              if( _isAdLoaded && _kAdIndex == index){
                return Container(
                  height: 72.0,
                  alignment: Alignment.center,
                  child: AdWidget(ad: _ad),
                );
              }
              else {
                final item = jsonResponse[_getDestinationItemIndex(index)];
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading:
                    Image.network(item['thumbnailUrl']),
                    title: Text(item['title']),
                  ),
                );
              }
            }),
      ),
    );
  }

  int _getDestinationItemIndex(int rawIndex) {
    if (rawIndex >= _kAdIndex && _isAdLoaded) {
      return rawIndex - 1;
    }
    return rawIndex;
  }
}
