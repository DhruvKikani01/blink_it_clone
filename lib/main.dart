import 'package:blink_it_clone/Domain/Routes/routes.dart';
import 'package:blink_it_clone/Reposatory/screens/splash/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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