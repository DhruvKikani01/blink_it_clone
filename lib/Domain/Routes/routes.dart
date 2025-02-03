import 'package:blink_it_clone/Domain/constants/constants.dart';
import 'package:blink_it_clone/Reposatory/screens/login/LoginScreen.dart';
import 'package:blink_it_clone/Reposatory/screens/splash/splashScreen.dart';
import 'package:flutter/material.dart';

import '../../Reposatory/screens/bottomnav/bottomnavscreen.dart';

class MyAppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (BuildContext context) => const Splashscreen());
      case routeLoginscreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Loginscreen());
      case routeButtomNavScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Bottomnavscreen());
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Something went wrong!"),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.red)),
                        child: const Text(
                          "Go back",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ));
    }
  }
}
