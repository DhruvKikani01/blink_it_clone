import 'dart:async';

import 'package:blink_it_clone/Domain/constants/appcolors.dart';
import 'package:blink_it_clone/Domain/constants/constants.dart';
import 'package:blink_it_clone/Reposatory/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late SharedPreferences _preferences;

  bool isLogin = false;

  Future _initSharedPreferences() async {
    _preferences = await SharedPreferences.getInstance();
    isLogin = _preferences.getBool("isLogin") ?? false;
  }

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
    Timer(Duration(seconds: 3), () {
      isLogin
          ? Navigator.pushReplacementNamed(context, routeButtomNavScreen)
          : Navigator.pushReplacementNamed(context, routeLoginscreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Uihelper.CustomImage(img: "first.png")],
        ),
      ),
    );
  }
}
