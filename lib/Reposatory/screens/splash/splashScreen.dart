import 'dart:async';

import 'package:blink_it_clone/Domain/constants/appcolors.dart';
import 'package:blink_it_clone/Domain/constants/constants.dart';
import 'package:blink_it_clone/Reposatory/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, routeLoginscreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(img: "first.png")
          ],
        ),
      ),
    );
  }
}
