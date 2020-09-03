import 'package:flutter/material.dart';
import 'package:local_notification/model/NotificationData.dart';
import 'package:local_notification/ui/NotiScreen.dart';
import 'package:local_notification/util/NotificationService.dart';

class MyHomePage extends StatefulWidget {
  final title;
  MyHomePage({this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Simple Notification'),
              onPressed: () async {
                await notificationService.showNotification();
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    notificationService.setListenerForLowerVersions(onNotificationInLowerVersions);
    notificationService.setOnNotificationClick(onNotificationClick);
  }

  onNotificationInLowerVersions(NotificationData notificationData) {
    print('Notification Received ${notificationData.id}');
  }

  onNotificationClick(String payload) {
    print('Payload $payload');
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NotiScreen(
        payload: payload,
      );
    }));
  }
}

