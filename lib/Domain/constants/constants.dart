import 'package:flutter/material.dart';

const routeLoginscreen = 'routeLoginscreen';
const routeButtomNavScreen = 'routeButtomNavScreen';
const routeRegisterDetails = 'routeRegisterDetails';
const routeVegetablesandfruitsScreen = 'routeVegetablesandfruitsScreen';
const routeAttadalriceScreen = 'routeAttadalriceScreen';
const routeOilgheemasala = 'routeOilgheemasala';
const routeDairybreadmilkScreen = 'routeDairybreadmilkScreen';
const routeBiscuitsbakeryScreen = 'routeBiscuitsbakeryScreen';

class MySnackBar {
  static showSnackBar(
      {required BuildContext context,
      required String content,
      Color? backGroundColor}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
        backgroundColor: backGroundColor ?? Colors.black,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          onPressed: () {},
          label: "Click Here",
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
