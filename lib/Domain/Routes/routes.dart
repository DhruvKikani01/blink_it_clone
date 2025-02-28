import 'package:blink_it_clone/Domain/constants/constants.dart';
import 'package:blink_it_clone/Reposatory/screens/Atta,%20Dal%20&%20Rice/AttaDalRice.dart';
import 'package:blink_it_clone/Reposatory/screens/Biscuits%20&%20Bakery/BiscuitsBakery.dart';
import 'package:blink_it_clone/Reposatory/screens/Dairy,%20Bread%20&%20Milk/DairyBreadMilk.dart';
import 'package:blink_it_clone/Reposatory/screens/Oil,%20Ghee%20&%20Masala/OilGheeMasala.dart';
import 'package:blink_it_clone/Reposatory/screens/login/LoginScreen.dart';
import 'package:blink_it_clone/Reposatory/screens/register_details/registerdetails.dart';
import 'package:blink_it_clone/Reposatory/screens/splash/splashScreen.dart';
import 'package:flutter/material.dart';
import '../../Reposatory/screens/Vegetables & Fruits/vegetablesandfruits.dart';
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
      case routeRegisterDetails:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Registerdetails());
      case routeVegetablesandfruitsScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const VegetablesandfruitsScreen());
      case routeAttadalriceScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AttadalriceScreen());
      case routeOilgheemasala:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Oilgheemasala());
      case routeDairybreadmilkScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const DairybreadmilkScreen());
      case routeBiscuitsbakeryScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BiscuitsbakeryScreen());
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
