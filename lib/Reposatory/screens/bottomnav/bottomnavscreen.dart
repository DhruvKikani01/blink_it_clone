import 'package:blink_it_clone/Reposatory/screens/category/categoryscreen.dart';
import 'package:blink_it_clone/Reposatory/screens/home/homescreen.dart';
import 'package:blink_it_clone/Reposatory/screens/printer/printerscreen.dart';
import 'package:blink_it_clone/Reposatory/screens/shopping/shoppingscreen.dart';
import 'package:blink_it_clone/Reposatory/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    const Homescreen(),
    const Shoppingscreen(),
    const Categoryscreen(),
    const Printerscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Uihelper.CustomImage(img: "home.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: Uihelper.CustomImage(img: "shopping.png"),
              label: "Shopping"),
          BottomNavigationBarItem(
              icon: Uihelper.CustomImage(img: "category.png"),
              label: "Category"),
          BottomNavigationBarItem(
              icon: Uihelper.CustomImage(img: "printer.png"), label: "Printer"),
        ],
      ),
    );
  }
}
