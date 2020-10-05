import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_responsive_ui/ResponsiveUIHelper.dart';
import 'package:test_responsive_ui/ui/MasterDetailPage.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
      builder: DevicePreview.appBuilder, // <--- /!\ Add the builder
      title: 'ResponsiveUI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ResponsiveUI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screeSize = MediaQuery.of(context).size;
    ResponsiveUIHelper().updateScreenDimension(
        width: screeSize.width, height: screeSize.height);
    //debugPrint('Size => ' + screeSize.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    simpleCard(),
                    simpleCard(),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    simpleCard(),
                    simpleCard(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      'Style Two',
                      style: ResponsiveUIHelper().getTextStyleRegular(
                          fontSize: 40, fontName: "Dancing"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: ResponsiveUIHelper()
                            .getProportionalWidth(width: 100),
                        height: ResponsiveUIHelper()
                            .getProportionalHeight(height: 100),
                        child: Image(
                          image: AssetImage('images/my_wallet_wlo_pro.png'),
                        )),
                  ),
                  FittedBox(
                    fit: BoxFit.fill,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20.0),
                        height: ResponsiveUIHelper().getDeviceOrientation(context) == Orientation.portrait ? ResponsiveUIHelper().getProportionalHeight(height: 16.0)
                        : ResponsiveUIHelper().getProportionalHeight(height: 20.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MasterDetailPage();
                            }));
                          },
                          color: ResponsiveUIHelper().getDeviceOrientation(context) == Orientation.portrait ? Colors.blue : Colors.black45,
                          child: Text(
                            'Orientation Test',
                            style: ResponsiveUIHelper().getTextStyleRegular(
                                color: Colors.white,
                                fontSize: ResponsiveUIHelper().getDeviceOrientation(context)== Orientation.portrait ? 6 : 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget simpleCard() {
    return Container(
      width: ResponsiveUIHelper().getProportionalWidth(width: 230.0),
      height: ResponsiveUIHelper().getProportionalHeight(height: 120.0),
      child: Card(
        child: Center(
          child: Text(
            'Hello',
            style: ResponsiveUIHelper().getTextStyleRegular(
                fontSize:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 30
                        : 20,
                fontName: "Dancing"),
          ),
        ),
      ),
    );
  }
}
