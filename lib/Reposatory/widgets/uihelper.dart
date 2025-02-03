import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Uihelper {
  static CustomImage({required String img,}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontFamily,
      required double fontSize}) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontweight,
          fontFamily: fontFamily,
          fontSize: fontSize),
    );
  }

  static CustomTextField({required TextEditingController controller}){
    return Container(
      height: 43,
      width: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
              color: Color(0XFFC5C5C5)
          )
      ),
      child: TextField(
        textInputAction: TextInputAction.search,
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search 'ice-cream'",
            hintStyle: TextStyle(fontSize: 13, fontFamily: "regular"),
            prefixIcon: Image.asset("assets/images/search.png"),
            suffixIcon: Image.asset("assets/images/mic.png"),
            border: InputBorder.none
        ),
      ),
    );
  }

  static CustomButton({required VoidCallback callback}){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        border: Border.all(
          color: Color(0XFF27AF34)
        ),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Center(child: Text("Add",style: TextStyle(color: Color(0XFF27AF34),fontSize: 10),),),
    );
  }
}
