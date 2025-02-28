import 'package:blink_it_clone/Domain/Routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Services/notification_service.dart';
import 'Services/push_notification_service.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {}

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //check that flutter have initialized or not. It is required otherwise give an error.
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDGou0tszkqzq5RaDLFZ1chbfQx4ThRpWY",
          appId: "1:326583643343:android:5f061d2f5326ec6d5d5bba",
          messagingSenderId: "326583643343",
          projectId: "blinkit-26b18"));
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await NotificationService().init();
  await NotificationService().isAndroidPermissionGranted();
  await NotificationService().requestPermissions();
  await NotificationService().configureDidReceiveLocalNotificationSubject();
  await NotificationService().configureSelectNotificationSubject();
  await PushNotificationService().setupInteractedMessage();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      // home: Splashscreen(),
      onGenerateRoute: MyAppRoutes.onGenerate,
    );
  }
}