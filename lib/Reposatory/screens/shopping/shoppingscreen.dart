import 'package:blink_it_clone/Reposatory/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoppingscreen extends StatefulWidget {
  const Shoppingscreen({super.key});

  @override
  State<Shoppingscreen> createState() => _ShoppingscreenState();
}

class _ShoppingscreenState extends State<Shoppingscreen> {
  TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0XFFF7CB45),
              child: Column(
                children: [
                  SizedBox(
                    height: 59,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Uihelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: "bold")
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Uihelper.CustomText(
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "bold")
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Uihelper.CustomText(
                          text: "HOME - ",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: "bold"),
                      Uihelper.CustomText(
                          text: "Dhruv Kikani, Venu Tower, 1st floor, 102",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.normal,
                          fontSize: 12,
                          fontFamily: "regular"),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 80,
              left: 400,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Positioned(
                bottom: 15,
                left: 12,
                child: Uihelper.CustomTextField(controller: searchcontroller))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Uihelper.CustomImage(
          img: "cart.png",
        ),
        SizedBox(
          height: 10,
        ),
        Uihelper.CustomText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontSize: 16,
            fontFamily: "bold"),
        Uihelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.normal,
            fontSize: 10,
            fontFamily: "regular"),
        Uihelper.CustomText(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontweight: FontWeight.normal,
            fontSize: 10,
            fontFamily: "regular"),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            Uihelper.CustomText(
                text: "Bestsellers",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "bold")
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Uihelper.CustomImage(img: "image 45.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 100, left: 66),
                      child: Uihelper.CustomButton(callback: () {}),
                    ),
                  ],
                ),
                Uihelper.CustomText(
                    text: "Amul Taaza",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.normal,
                    fontSize: 10,
                    fontFamily: "regular"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      color: Colors.brown,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Uihelper.CustomText(
                        text: "16 MINS",
                        color: const Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: "regular"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Uihelper.CustomText(
                    text: "₹ 27",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontSize: 20)
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Uihelper.CustomImage(img: "image 44.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 100, left: 66),
                      child: Uihelper.CustomButton(callback: () {}),
                    ),
                  ],
                ),
                Uihelper.CustomText(
                    text: "Potato (Aloo)",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.normal,
                    fontSize: 10,
                    fontFamily: "regular"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      color: Colors.brown,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Uihelper.CustomText(
                        text: "16 MINS",
                        color: const Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: "regular"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Uihelper.CustomText(
                    text: "₹ 37",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontSize: 20)
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Uihelper.CustomImage(img: "image 46.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 100, left: 66),
                      child: Uihelper.CustomButton(callback: () {}),
                    ),
                  ],
                ),
                Uihelper.CustomText(
                    text: "Hybrid Tomato",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.normal,
                    fontSize: 10,
                    fontFamily: "regular"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      color: Colors.brown,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Uihelper.CustomText(
                        text: "16 MINS",
                        color: const Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: "regular"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Uihelper.CustomText(
                  text: "₹ 37",
                  color: Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontSize: 20,
                )
              ],
            ),
          ],
        )
      ],
    ));
  }
}
