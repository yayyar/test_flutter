import 'dart:io';

import 'package:ads_fl/ui/inline_banner.dart';
import 'package:ads_fl/ui/native_inline_page.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ads_fl/ad_helper.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late BannerAd _ad;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
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
        title: Text(widget.title),
        centerTitle: Platform.isIOS,
      ),
      body: FutureBuilder<InitializationStatus>(
          future: _initGoogleMobileAds(),
          builder: (context, snapshot) {
            List<Widget> children = [];

            if (snapshot.connectionState == ConnectionState.waiting) {
              children.add(Center(
                child: SizedBox(
                  child: CircularProgressIndicator(),
                  width: 48.0,
                  height: 48.0,
                ),
              ));
            } else {
              if (snapshot.hasData) {
                children.addAll([
                  if (_isAdLoaded)
                    Container(
                      child: AdWidget(ad: _ad),
                      width: _ad.size.width.toDouble(),
                      height: 72.0,
                      alignment: Alignment.center,
                    ),
                  ElevatedButton(
                      onPressed: () => _requestAds(),
                      child: Text('Request Ads')),
                  ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InlineBanner())),
                      child: Text('Inline Banner')),
                  ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NativeInlinePage())),
                      child: Text('Native Inline'))
                ]);
              }
            }

            return Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: children,
              ),
            );
          }),
    );
  }

  _requestAds() {
    print('Request Ads');
    _ad = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print('Ad load failed (code=${error.code} message=${error.message})');
        },
      ),
    );
    _ad.load();
  }

  Future<InitializationStatus> _initGoogleMobileAds() {
    return MobileAds.instance.initialize();
  }
}
