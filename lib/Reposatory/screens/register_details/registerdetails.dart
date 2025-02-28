import 'dart:async';

import 'package:blink_it_clone/Domain/constants/constants.dart';
import 'package:blink_it_clone/Reposatory/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Services/google_sign_in.dart';

class Registerdetails extends StatefulWidget {
  const Registerdetails({super.key});

  @override
  State<Registerdetails> createState() => _RegisterdetailsState();
}

class _RegisterdetailsState extends State<Registerdetails> {

  bool isLoading = false;

  late SharedPreferences _preferences;

  Future _initSharedPrefernces() async{
    _preferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initSharedPrefernces();
  }

  Future _handleSignOut() async {
    setState(() => isLoading = true);
    final GoogleSignInProvider googleSignIn = GoogleSignInProvider();
    try {
      await googleSignIn.signOut();
    } catch (error) {
      print(error);
    }
    setState(() => isLoading = false);
    Navigator.pushNamedAndRemoveUntil(context, routeLoginscreen, (Route r)=>false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_sharp,
                size: 22,
                color: Colors.black,
              )),
          title: Uihelper.CustomText(
              text: "Profile",
              color: Colors.black,
              fontweight: FontWeight.normal,
              fontSize: 15,
              fontFamily: "regular")),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomText(
                      text: "My account",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "bold"),
                  const SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "8849936961",
                      color: Colors.black,
                      fontweight: FontWeight.normal,
                      fontSize: 15,
                      fontFamily: "regular"),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 450,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow.shade100),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.wallet),
                              const SizedBox(
                                height: 10,
                              ),
                              Uihelper.CustomText(
                                  text: "Zomato Money",
                                  color: Colors.black,
                                  fontweight: FontWeight.normal,
                                  fontSize: 10,
                                  fontFamily: "regular"),
                            ],
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.library_books_outlined),
                              const SizedBox(
                                height: 10,
                              ),
                              Uihelper.CustomText(
                                  text: "Support",
                                  color: Colors.black,
                                  fontweight: FontWeight.normal,
                                  fontSize: 10,
                                  fontFamily: "regular"),
                            ],
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.payment),
                              const SizedBox(
                                height: 10,
                              ),
                              Uihelper.CustomText(
                                  text: "Payments",
                                  color: Colors.black,
                                  fontweight: FontWeight.normal,
                                  fontSize: 10,
                                  fontFamily: "regular"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              Uihelper.CustomText(
                  text: "YOUR INFORMATION",
                  color: const Color(0XFF9C9C9C),
                  fontweight: FontWeight.normal,
                  fontSize: 13,
                  fontFamily: "regular")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.shopping_bag_outlined),
            title: Uihelper.CustomText(
                text: "Your orders",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.receipt_long),
            title: Uihelper.CustomText(
                text: "Bookmarked recipes",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.book_outlined),
            title: Uihelper.CustomText(
                text: "Address book",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.event_note_outlined),
            title: Uihelper.CustomText(
                text: "GST details",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.card_giftcard),
            title: Uihelper.CustomText(
                text: "E-Gift Cards",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              Uihelper.CustomText(
                  text: "PAYMENTS AND COUPONS",
                  color: const Color(0XFF9C9C9C),
                  fontweight: FontWeight.normal,
                  fontSize: 13,
                  fontFamily: "regular")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.wallet),
            title: Uihelper.CustomText(
                text: "Wallet",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.wallet),
            title: Uihelper.CustomText(
                text: "Zomato Money",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.payment),
            title: Uihelper.CustomText(
                text: "Payment settings",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.local_offer_outlined),
            title: Uihelper.CustomText(
                text: "Collected coupons",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              Uihelper.CustomText(
                  text: "OTHER INFORMATION",
                  color: const Color(0XFF9C9C9C),
                  fontweight: FontWeight.normal,
                  fontSize: 13,
                  fontFamily: "regular")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.share),
            title: Uihelper.CustomText(
                text: "Share the app",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.info_outline),
            title: Uihelper.CustomText(
                text: "About us",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.notifications_none_outlined),
            title: Uihelper.CustomText(
                text: "Notification preferences",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
          ),
          ListTile(
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.logout_outlined),
            title: Uihelper.CustomText(
                text: "Log out",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontSize: 10,
                fontFamily: "regular"),
            onTap: (){
              // AlertDialog(
              //   title: Text("Are you sure!"),
              //   actions: [
              //     Row(
              //       children: [
              //         TextButton(onPressed: (){
              //         }, child: Text("Yes")),
              //         TextButton(onPressed: (){}, child: Text("No"))
              //       ],
              //     )
              //   ],
              // );
              _handleSignOut();
              _preferences.setBool("isLogin", false);
            },
          ),
        ],
      ),
    );
  }
}
