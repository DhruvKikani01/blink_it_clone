import 'package:blink_it_clone/Domain/constants/constants.dart';
import 'package:blink_it_clone/Reposatory/widgets/uihelper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Services/google_sign_in.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  late SharedPreferences _preferences;

  Future _initSharedPreferences() async{
    _preferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initSharedPreferences();
  }

  GlobalKey<FormState> newform = GlobalKey<FormState>();

  bool isLoading = false;

  String userSocialEmail = '';

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  Future _openTermsUrlFromLink() async {
    final Uri uriLink = Uri.parse("https://blinkit.com/terms?mobile=1");
    if (await canLaunchUrl(uriLink) == true) {
      launchUrl(uriLink, mode: LaunchMode.inAppBrowserView);
    } else {
      print("Terms Url not valid");
    }
  }

  Future _openPrivacyUrlFromLink() async {
    final Uri privacyUrl = Uri.parse("https://blinkit.com/privacy?mobile=1");
    if (await canLaunchUrl(privacyUrl) == true) {
      launchUrl(privacyUrl, mode: LaunchMode.inAppBrowserView);
    } else {
      print("Privacy Url Not Valid");
    }
  }

  Future _handleSignIn() async {
    setState(() => isLoading = true);
    final GoogleSignInProvider googleSignIn = GoogleSignInProvider();
    try {
      final UserCredential userCredential = await googleSignIn.signIn();
      final user = userCredential.user;
      debugPrint('user email is = ${user?.email}');
      if (await GoogleSignIn().isSignedIn()) {
        setState(() {
          userSocialEmail = user!.email!;
        });
        Navigator.pushNamedAndRemoveUntil(context, routeButtomNavScreen, (Route r)=>false);
        _preferences.setBool("isLogin", true);
        // return _loginWithGoogleAPI();
      }
    } catch (error) {
      print(error);
    }
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: newform,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 30,
              ),
              Flexible(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Uihelper.CustomImage(img: "Loginfirst.png"),
                ],
              )),
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
                              backgroundColor: WidgetStatePropertyAll(
                                  Colors.yellow.shade600),
                              shape:
                                  WidgetStatePropertyAll(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                          onPressed: () {
                            _handleSignIn();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Uihelper.CustomText(
                                  text: "Login  with google",
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: "bold"),
                              const SizedBox(
                                width: 167,
                              ),
                              SizedBox(
                                height: 35,
                                width: 35,
                                child: Uihelper.CustomImage(img: "google.png"),
                              )
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
                          color: const Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontSize: 11,
                          fontFamily: "regular"),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      topLeft: Radius.circular(12))),
                              builder: (BuildContext context) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Uihelper.CustomText(
                                        text: "Login in or sign up",
                                        color: Colors.black,
                                        fontweight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: "bold"),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: PhoneFormField(
                                          autovalidateMode:
                                              AutovalidateMode.always,
                                          validator: (value) {
                                            if (value == null) {
                                              return "Please enter the number";
                                            } else {
                                              return "";
                                            }
                                          },
                                          initialValue:
                                              PhoneNumber.parse("+91"),
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: ElevatedButton(
                                            onPressed: () {
                                              if (!newform.currentState!
                                                  .validate()) {
                                                Navigator.pushNamed(context,
                                                    routeButtomNavScreen);
                                              }
                                            },
                                            style: ButtonStyle(
                                              shape: WidgetStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color(0XFF8F9AA1)),
                                            ),
                                            child: Text("Continue"),
                                          )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            "or login with phone number",
                            style: TextStyle(
                                color: Color(0XFF269237),
                                fontFamily: "regular",
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.dashed),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              )
            ],
          ),
        ),
      ),
      bottomSheet: SizedBox(
        height: 28,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "By continuing, you agree to our",
              style: TextStyle(fontSize: 11, color: Color(0XFF9C9C9C)),
            ),
            TextButton(
                onPressed: _openTermsUrlFromLink,
                child: Text(
                  "Terms of service",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                      color: Color(0XFF9C9C9C),
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed),
                )),
            Text(
              "&",
              style: TextStyle(fontSize: 11, color: Color(0XFF9C9C9C)),
            ),
            TextButton(
                onPressed: _openPrivacyUrlFromLink,
                child: Text(
                  "Privacy policy",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Color(0XFF9C9C9C),
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed),
                ))
          ],
        ),
      ),
    );
  }
}
