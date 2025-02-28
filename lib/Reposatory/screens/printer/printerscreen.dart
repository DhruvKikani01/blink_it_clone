import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../../../Domain/constants/constants.dart';
import '../../widgets/uihelper.dart';

class Printerscreen extends StatefulWidget {
  const Printerscreen({super.key});

  @override
  State<Printerscreen> createState() => _PrinterscreenState();
}

class _PrinterscreenState extends State<Printerscreen> {
  TextEditingController searchcontroller = TextEditingController();

  File? _selectPdf;

  Future<void> _pickPdfFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'], // Allow only PDF files
    );

    if (result != null) {
      setState(() {
        _selectPdf = File(result.files.single.path!);
      });
    }
  }

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
                color: const Color(0XFFF7CB45),
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
                            color: const Color(0XFF000000),
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
                            color: const Color(0XFF000000),
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
                            color: const Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontSize: 12,
                            fontFamily: "bold"),
                        Uihelper.CustomText(
                            text: "Dhruv Kikani, Venu Tower, 1st floor, 102",
                            color: const Color(0XFF000000),
                            fontweight: FontWeight.normal,
                            fontSize: 12,
                            fontFamily: "regular"),
                        const SizedBox(
                          width: 2,
                        ),
                        const Icon(Icons.arrow_drop_down)
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
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              const SizedBox(height: 30),
              Uihelper.CustomText(
                  text: "Print Store",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontSize: 32,
                  fontFamily: "bold"),
              Uihelper.CustomText(
                  text: "Blinkit ensures secure prints at every stage",
                  color: const Color(0XFF9C9C9C),
                  fontweight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "bold"),
              const SizedBox(
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
                    margin: const EdgeInsets.all(10),
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
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Uihelper.CustomImage(img: "spark.png"),
                              const SizedBox(
                                width: 5,
                              ),
                              Uihelper.CustomText(
                                  text: "Price starting at rs 3/page",
                                  color: const Color(0XFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: "regular")
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Uihelper.CustomImage(img: "spark.png"),
                              const SizedBox(
                                width: 5,
                              ),
                              Uihelper.CustomText(
                                  text: "Paper quality: 70 GSM",
                                  color: const Color(0XFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: "regular")
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Uihelper.CustomImage(img: "spark.png"),
                              const SizedBox(
                                width: 5,
                              ),
                              Uihelper.CustomText(
                                  text: "Single side prints",
                                  color: const Color(0XFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: "regular"),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              const SizedBox(width: 10,),
                              ElevatedButton(
                                  onPressed: () {
                                    _pickPdfFile();
                                  },
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(Color(0XFF27AF34))
                                  ),
                                  child: Uihelper.CustomText(
                                      text: "Upload Files",
                                      color: Colors.white,
                                      fontweight: FontWeight.bold,
                                      fontSize: 13,
                                      fontFamily: "bold")),
                            ],
                          ),
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
