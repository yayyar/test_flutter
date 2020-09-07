import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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
  var _notiCount;
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
              child: Text('Cancel Notification'),
              onPressed: () async {
                //24 hour format to set notification time
                await notificationService.cancelNotification();
              },
            ),
            RaisedButton(
              child: Text('Cancel All Notification'),
              onPressed: () async {
                //24 hour format to set notification time
                await notificationService.cancelAllNotification();
              },
            ),
            RaisedButton(
              child: Text('Simple Notification'),
              onPressed: () async {
                await notificationService.showNotification();
              },
            ),
            RaisedButton(
              child: Text('DailyAtTime Notification'),
              onPressed: () async {
                //24 hour format to set notification time
                await notificationService.showDailyAtTime(hour: 16, minute: 34, second: 0);
              },
            ),
            RaisedButton(
              child: Text('WeeklyAtTime Notification'),
              onPressed: () async {
                //24 hour format to set notification time
                await notificationService.showWeeklyAtDayTime(day: Day.Thursday, hour: 16, minute: 35, second: 0);
              },
            ),
            RaisedButton(
              child: Text('Repeat Notification'),
              onPressed: () async {
                //24 hour format to set notification time
                await notificationService.repeatNotification();
              },
            ),
            RaisedButton(
              child: Text('Schedule Notification'),
              onPressed: () async {
                //24 hour format to set notification time
                await notificationService.scheduleNotification();
              },
            ),
            RaisedButton(
              child: Text('Attachment Notification'),
              onPressed: () async {
                //24 hour format to set notification time
                await notificationService.showNotificationWithAttachment();
                _notiCount = await notificationService.getPendingNotificationCount();
                print('Count $_notiCount');
              },
            ),
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

