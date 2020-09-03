import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:io' show Platform;

import 'package:local_notification/model/NotificationData.dart';
import 'package:rxdart/rxdart.dart';

class NotificationService {
  //declare flutter notification plugin
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  //declare the settings for both android and iOS notifications
  var initializationSettings;
  // ignore: close_sinks
  final BehaviorSubject<NotificationData> notificationBehaviorSubject =
      BehaviorSubject<NotificationData>();

  NotificationService.start() {
    init();
  }

  void init() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    if (Platform.isIOS) {
      _requestIOSPermission();
    }
    initializePlatformSpecifics();
  }

  //request permission for IOS
  _requestIOSPermission() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        .requestPermissions(
          alert: false,
          badge: true,
          sound: true,
        );
  }

  //initialize the settings for both android and iOS notifications
  initializePlatformSpecifics() {
    var initializationSettingsAndroid =
        AndroidInitializationSettings('noti_icon');
    var initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: false,
      onDidReceiveLocalNotification: (id, title, body, payload) async {
        // your call back to the UI
        NotificationData notificationData = NotificationData(
            id: id, title: title, body: body, payload: payload);
        notificationBehaviorSubject.add(notificationData);
      },
    );
    initializationSettings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
  }

  //listen for notification click
  setListenerForLowerVersions(Function onNotificationInLowerVersions) {
    notificationBehaviorSubject.listen((notificationData) {
      onNotificationInLowerVersions(notificationData);
    });
  }

  //notification click event
  setOnNotificationClick(Function onNotificationClick) async {
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String payload) async {
      onNotificationClick(payload);
    });
  }

  //simple notification
  Future<void> showNotification() async {
    //for android
    var androidChannelSpecifics = AndroidNotificationDetails(
      'CHANNEL_ID',
      'CHANNEL_NAME',
      "CHANNEL_DESCRIPTION",
      importance: Importance.Max,
      priority: Priority.High,
      playSound: true,
      timeoutAfter: 5000,
      styleInformation: DefaultStyleInformation(true, true),
    );
    //for iOS
    var iosChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics =
        NotificationDetails(androidChannelSpecifics, iosChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      'Test Title',
      'Test Body',
      platformChannelSpecifics,
      payload: 'New Payload',
    );
  }

  // daily at time notification
  Future<void> showDailyAtTime(
      {@required int hour, @required int minute, @required int second}) async {
    print('$hour , $minute, $second');
    var time = Time(hour, minute, second);
    var androidChannelSpecifics = AndroidNotificationDetails(
      'CHANNEL_ID 1',
      'CHANNEL_NAME 1',
      "CHANNEL_DESCRIPTION 1",
      importance: Importance.Max,
      priority: Priority.High,
    );
    var iosChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics =
        NotificationDetails(androidChannelSpecifics, iosChannelSpecifics);
    await flutterLocalNotificationsPlugin.showDailyAtTime(
      0,
      'Test Title at ${time.hour}:${time.minute}.${time.second}',
      'Test Body',
      time, //24 hour format to set notification time
      platformChannelSpecifics,
      payload: 'Test Payload',
    );
  }

  // weekly
  Future<void> showWeeklyAtDayTime(
      {@required Day day,
      @required int hour,
      @required int minute,
      @required int second}) async {
    var time = Time(hour, minute, second);
    var androidChannelSpecifics = AndroidNotificationDetails(
      'CHANNEL_ID 2',
      'CHANNEL_NAME 2',
      "CHANNEL_DESCRIPTION 2",
      importance: Importance.Max,
      priority: Priority.High,
    );
    var iosChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics =
        NotificationDetails(androidChannelSpecifics, iosChannelSpecifics);
    await flutterLocalNotificationsPlugin.showWeeklyAtDayAndTime(
      0,
      'Test Title at ${time.hour}:${time.minute}.${time.second}',
      'Test Body',
      day, // day
      time, // time
      platformChannelSpecifics,
      payload: 'Test Payload',
    );
  }

  //repeat
  Future<void> repeatNotification() async {
    var androidChannelSpecifics = AndroidNotificationDetails(
      'CHANNEL_ID 3',
      'CHANNEL_NAME 3',
      "CHANNEL_DESCRIPTION 3",
      importance: Importance.Max,
      priority: Priority.High,
      styleInformation: DefaultStyleInformation(true, true),
    );
    var iosChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics =
        NotificationDetails(androidChannelSpecifics, iosChannelSpecifics);
    await flutterLocalNotificationsPlugin.periodicallyShow(
      0,
      'Repeating Test Title',
      'Repeating Test Body',
      RepeatInterval.EveryMinute,
      platformChannelSpecifics,
      payload: 'Test Payload',
    );
  }

  //schedule
  Future<void> scheduleNotification() async {
    var scheduleNotificationDateTime = DateTime.now().add(Duration(seconds: 5));
    var androidChannelSpecifics = AndroidNotificationDetails(
      'CHANNEL_ID 4',
      'CHANNEL_NAME 4',
      "CHANNEL_DESCRIPTION 4",
      icon: 'noti_icon',
      sound: RawResourceAndroidNotificationSound('swiftly'),
      largeIcon: DrawableResourceAndroidBitmap('noti_icon'),
      enableLights: true,
      color: const Color.fromARGB(255, 255, 0, 0),
      ledColor: const Color.fromARGB(255, 255, 0, 0),
      ledOnMs: 1000,
      ledOffMs: 500,
      importance: Importance.Max,
      priority: Priority.High,
      playSound: true,
      timeoutAfter: 5000,
      styleInformation: DefaultStyleInformation(true, true),
    );
    var iosChannelSpecifics = IOSNotificationDetails(
      sound: 'my_sound.aiff',
    );
    var platformChannelSpecifics = NotificationDetails(
      androidChannelSpecifics,
      iosChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.schedule(
      0,
      'Test Schedule Title',
      'Test Schedule Body',
      scheduleNotificationDateTime,
      platformChannelSpecifics,
      payload: 'Test Payload',
    );
  }

  //cancel notification
   Future<void> cancelNotification() async {
     await flutterLocalNotificationsPlugin.cancel(0);
   }

  //cancel all notification
   Future<void> cancelAllNotification() async {
     await flutterLocalNotificationsPlugin.cancelAll();
   }
}

NotificationService notificationService = NotificationService.start();
