import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class Printerscreen extends StatefulWidget {
  const Printerscreen({super.key});

  @override
  State<Printerscreen> createState() => _PrinterscreenState();
}

class _PrinterscreenState extends State<Printerscreen> {
  TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
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
          Column(
            children: [
              SizedBox(height: 30),
              Uihelper.CustomText(
                  text: "Print Store",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontSize: 32,
                  fontFamily: "bold"),
              Uihelper.CustomText(
                  text: "Blinkit ensures secure prints at every stage",
                  color: Color(0XFF9C9C9C),
                  fontweight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "bold"),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Uihelper.CustomText(
                                  text: "Documents",
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: "regular")
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Uihelper.CustomImage(img: "spark.png"),
                              SizedBox(
                                width: 5,
                              ),
                              Uihelper.CustomText(
                                  text: "Price starting at rs 3/page",
                                  color: Color(0XFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: "regular")
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Uihelper.CustomImage(img: "spark.png"),
                              SizedBox(
                                width: 5,
                              ),
                              Uihelper.CustomText(
                                  text: "Paper quality: 70 GSM",
                                  color: Color(0XFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: "regular")
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Uihelper.CustomImage(img: "spark.png"),
                              SizedBox(
                                width: 5,
                              ),
                              Uihelper.CustomText(
                                  text: "Single side prints",
                                  color: Color(0XFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: "regular"),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(Color(0XFF27AF34))
                                  ),
                                  child: Uihelper.CustomText(
                                      text: "Upload Files",
                                      color: Colors.white,
                                      fontweight: FontWeight.bold,
                                      fontSize: 13,
                                      fontFamily: "bold"))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      right: 30,
                      child: Uihelper.CustomImage(img: "image 62.png")),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
