import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  TextEditingController searchcontroller = TextEditingController();

  var grocerykitchen = [
    {"img": "image1.png", "text": "Vegetables & \nFruites"},
    {"img": "image2.png", "text": "Atta, Dal & \nRice"},
    {"img": "image3.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image4.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image5.png", "text": "Biscuits & \nBakery"},
  ];

  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits & \nCereals"},
    {"img": "image 22.png", "text": "Kitchen & \nAppliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];

  var snacksanddrinks = [
    {"img": "s1.png", "text": "Chips & \nNamkeens"},
    {"img": "s2.png", "text": "Sweets & \nChocalates"},
    {"img": "s3.png", "text": "Drinks & \nJuices"},
    {"img": "s4.png", "text": "Sauces & \nSpreads"},
    {"img": "s5.png", "text": "Beauty & \nCosmetics"},
  ];

  var households = [
    {"img": "h1.png", "text": "Washing Powders"},
    {"img": "h2.png", "text": "Soups & \nmore"},
    {"img": "h3.png", "text": "Fragrance & \nmore"},
    {"img": "h4.png", "text": "Furniture & \nmore"},
    {"img": "h5.png", "text": "Oils & \nmore"},
  ];

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
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            Uihelper.CustomText(
                text: "Grocery & Kitchen",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "bold")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, int index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 71,
                      height: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0XFFD9EBEB)),
                      child: Uihelper.CustomImage(
                          img: grocerykitchen[index]["img"].toString()),
                    ),
                  ),
                  Uihelper.CustomText(
                      text: grocerykitchen[index]["text"].toString(),
                      color: const Color(0xFF000000),
                      fontweight: FontWeight.normal,
                      fontSize: 10,
                      fontFamily: "regular")
                ],
              ),
              itemCount: grocerykitchen.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 85,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, int index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 71,
                      height: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0XFFD9EBEB)),
                      child: Uihelper.CustomImage(
                          img: secondgrocery[index]["img"].toString()),
                    ),
                  ),
                  Uihelper.CustomText(
                      text: secondgrocery[index]["text"].toString(),
                      color: const Color(0xFF000000),
                      fontweight: FontWeight.normal,
                      fontSize: 10,
                      fontFamily: "regular")
                ],
              ),
              itemCount: secondgrocery.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 85,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            Uihelper.CustomText(
                text: "Snacks & Drinks",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "bold")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, int index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 71,
                      height: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0XFFD9EBEB)),
                      child: Uihelper.CustomImage(
                          img: snacksanddrinks[index]["img"].toString()),
                    ),
                  ),
                  Uihelper.CustomText(
                      text: snacksanddrinks[index]["text"].toString(),
                      color: const Color(0xFF000000),
                      fontweight: FontWeight.normal,
                      fontSize: 10,
                      fontFamily: "regular")
                ],
              ),
              itemCount: snacksanddrinks.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 85,
            ),
          ),
        ),const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            Uihelper.CustomText(
                text: "Household Essentials",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "bold")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, int index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 71,
                      height: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0XFFD9EBEB)),
                      child: Uihelper.CustomImage(
                          img: households[index]["img"].toString()),
                    ),
                  ),
                  Uihelper.CustomText(
                      text: households[index]["text"].toString(),
                      color: const Color(0xFF000000),
                      fontweight: FontWeight.normal,
                      fontSize: 10,
                      fontFamily: "regular")
                ],
              ),
              itemCount: households.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 85,
            ),
          ),
        ),
      ],
    ));
  }
}
