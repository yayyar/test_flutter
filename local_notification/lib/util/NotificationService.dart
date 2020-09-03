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
  final BehaviorSubject<NotificationData> notificationBehaviorSubject = BehaviorSubject<NotificationData>();

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
          id: id, title: title, body: body, payload: payload
        );
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
}
NotificationService notificationService = NotificationService.start();
