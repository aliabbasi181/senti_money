import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senti/BLoc/application_bloc.dart';
import 'package:senti/Controllers/NotificationController.dart';
import 'package:senti/Views/Authentication/choose_country.dart';
import 'package:senti/Views/intro.dart';
import 'package:senti/Views/splash.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    AwesomeNotifications().initialize(null, [
      NotificationChannel(
          channelKey: "basic_channel",
          channelName: "Basic Channel",
          channelDescription: "Channel for send alert to users",
          importance: NotificationImportance.High,
          defaultColor: const Color.fromARGB(255, 0, 0, 0),
          channelShowBadge: true)
    ]);
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
    NotificationController.listenSentiNotification();
  } catch (ex) {
    print(ex);
  }
  runApp(ChangeNotifierProvider(
    create: ((context) => AppBLoc()),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    ),
  ));
}
