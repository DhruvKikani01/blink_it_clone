import 'package:blink_it_clone/Domain/constants/constants.dart';
import 'package:blink_it_clone/Reposatory/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 30,
            ),
            Uihelper.CustomImage(img: "Loginfirst.png"),
            const SizedBox(
              height: 10,
            ),
            Uihelper.CustomImage(img: 'Loginsecond.png'),
            const SizedBox(
              height: 10,
            ),
            Uihelper.CustomText(
                text: "India’s last minute app",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "bold"),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 250,
                width: 450,
                decoration: BoxDecoration(
                  color: const Color(0XFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Uihelper.CustomText(
                        text: "Dhruv",
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: "regular"),
                    Uihelper.CustomText(
                        text: "88499XXXXX",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: "bold"),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      width: 380,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0XFFE23744)),
                            shape:
                                WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                        onPressed: () {
                          Navigator.pushNamed(context, routeButtomNavScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Uihelper.CustomText(
                                text: "Login  with ",
                                color: Color(0XFFFFFFFF),
                                fontweight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: "bold"),
                            SizedBox(
                              width: 5,
                            ),
                            Uihelper.CustomImage(img: "zomato.png")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Uihelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontSize: 11,
                        fontFamily: "regular"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Uihelper.CustomText(
                            text: "or login with phone number",
                            color: Color(0XFF269237),
                            fontweight: FontWeight.normal,
                            fontFamily: "regular",
                            fontSize: 14))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
