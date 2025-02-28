import 'package:flutter/material.dart';
import '../../../Domain/constants/constants.dart';
import '../../widgets/uihelper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController searchcontroller = TextEditingController();

  var diwaliitems = [
    {"img": "diwali2.png", "text": "Lights & \nCandles"},
    {"img": "diwali3.png", "text": "Diwali \nGifts"},
    {"img": "diwali4.png", "text": "Appliances \n& Gadgets"},
    {"img": "diwali5.png", "text": "Home & \nLiving"},
  ];

  var grocerykitchen = [
    {"img": "image1.png", "text": "Vegetables & \nFruites", "route": "routeVegetablesandfruitsScreen"},
    {"img": "image2.png", "text": "Atta, Dal & \nRice", "route": "routeAttadalriceScreen"},
    {"img": "image3.png", "text": "Oil, Ghee & \nMasala", "route": "routeOilgheemasala"},
    {"img": "image4.png", "text": "Dairy, Bread & \nMilk", "route": "routeDairybreadmilkScreen"},
    {"img": "image5.png", "text": "Biscuits & \nBakery", "route": "routeBiscuitsbakeryScreen"},
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
              color: const Color(0XFFEC0505),
              child: Column(
                children: [
                  const SizedBox(
                    height: 59,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Uihelper.CustomText(
                          text: "Blinkit in",
                          color: const Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: "bold")
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Uihelper.CustomText(
                          text: "16 minutes",
                          color: const Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "bold")
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Uihelper.CustomText(
                          text: "HOME - ",
                          color: const Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: "bold"),
                      Uihelper.CustomText(
                          text: "Dhruv Kikani, Venu Tower, 1st floor, 102",
                          color: const Color(0XFFFFFFFF),
                          fontweight: FontWeight.normal,
                          fontSize: 12,
                          fontFamily: "regular"),
                      const SizedBox(
                        width: 2,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0XFFFFFFFF),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 80,
              left: 420,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, routeRegisterDetails);
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 15,
                left: 12,
                child: Uihelper.CustomTextField(controller: searchcontroller))
          ],
        ),
        Stack(
          children: [
            Container(
              color: const Color(0XFFEC0505),
              height: 196,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Uihelper.CustomText(
                          text: "Mega Diwali Sale",
                          color: const Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "PTbold"),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, int index) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  width: 86,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0XFFEAD3D3)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Uihelper.CustomText(
                                            text: diwaliitems[index]["text"]
                                                .toString(),
                                            color: const Color(0xFF000000),
                                            fontweight: FontWeight.normal,
                                            fontSize: 10,
                                            fontFamily: "regular"),
                                        Uihelper.CustomImage(
                                            img: diwaliitems[index]["img"]
                                                .toString()),
                                      ])),
                            ),
                          ],
                        ),
                        itemCount: diwaliitems.length,
                        scrollDirection: Axis.horizontal,
                        itemExtent: 85,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              child: Uihelper.CustomImage(img: "image 60.png"),
            ),
            Positioned(
              left: 51,
              child: Uihelper.CustomImage(img: "image 63.png"),
            ),
            Positioned(
              left: 80,
              child: Uihelper.CustomImage(img: "image 60.png"),
            ),
            Positioned(
              left: 350,
              child: Uihelper.CustomImage(img: "image 60.png"),
            ),
            Positioned(
              left: 380,
              child: Uihelper.CustomImage(img: "image 63.png"),
            ),
            Positioned(
              left: 400,
              child: Uihelper.CustomImage(img: "image 60.png"),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Uihelper.CustomImage(img: "image 71.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 66),
                      child: Uihelper.CustomButton(callback: () {}),
                    ),
                  ],
                ),
                Uihelper.CustomText(
                    text: "Golden Glass \nWooden \nLid Candle (Oudh)",
                    color: const Color(0XFF000000),
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
                const SizedBox(
                  height: 5,
                ),
                Uihelper.CustomText(
                    text: "₹ 79",
                    color: const Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontSize: 20)
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Uihelper.CustomImage(img: "image 72.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 66),
                      child: Uihelper.CustomButton(callback: () {}),
                    ),
                  ],
                ),
                Uihelper.CustomText(
                    text: "Royal Gulab \nJamun By Bikano",
                    color: const Color(0XFF000000),
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
                const SizedBox(
                  height: 5,
                ),
                Uihelper.CustomText(
                    text: "₹ 79",
                    color: const Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontSize: 20)
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Uihelper.CustomImage(img: "image 73.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 66),
                      child: Uihelper.CustomButton(callback: () {}),
                    ),
                  ],
                ),
                Uihelper.CustomText(
                    text: "Bikaji Bhujia",
                    color: const Color(0XFF000000),
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
                const SizedBox(
                  height: 5,
                ),
                Uihelper.CustomText(
                  text: "₹ 79",
                  color: const Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontSize: 20,
                )
              ],
            ),
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
                color: const Color(0XFF000000),
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
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, int index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, grocerykitchen[index]["route"].toString());
                      },
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
      ],
    ));
  }
}
