import 'package:flutter/material.dart';

class AppStyles {
  static Color mainColor =  Color(0xFF3E2723);
  static Color mainColor2 =  Color(0xFFFFFBEF);
  static Color bgColor = Color(0xFFFAFAFA);
  static Color textColor =  Color(0xFF212121);
  static Color lightTextColor =  Color(0xFF757575);
  static Color btnColor = Color(0xFFC69C6D);
  static Color btnColor2 = Color(0xFF880E4F);

  
 
  static Color starColor = Colors.amberAccent;
  static Color atlasBiegeColor = const Color.fromARGB(255, 225, 130, 96);
  static Color atlasBrownColor = const Color.fromARGB(255, 62, 39, 31);
  static Color atlasRedColor = const Color.fromARGB(255, 156, 27, 18);
  static Color danbaolyRedColor = const Color.fromARGB(255, 149, 49, 42);
  static Color danbaolyBlackColor = const Color.fromARGB(255, 0, 0, 0);
  static Color danbaolyPinkColor = const Color.fromARGB(255, 234, 113, 153);
  static Color danbaolyBrownColor = const Color.fromARGB(255, 39, 12, 2);
  static Color nuggetGoldColor = const Color.fromARGB(255, 226, 196, 89);
  static Color nuggetSilverColor = const Color.fromARGB(255, 234, 230, 230);
  static Color vlogoBlueColor = const Color.fromARGB(255, 175, 215, 248);
  static Color vlogoBlackColor = Colors.black;
  static Color vlogoGreenColor = const Color.fromARGB(255, 10, 68, 12);

  static TextStyle textStyle1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: textColor,
  );
  static TextStyle textStyle2 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: textColor,
  );
  
   static TextStyle headLineStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: mainColor,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: textColor,
  );
  static TextStyle priceStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight(800),
    color: textColor,
  );
  static TextStyle discountPriceStyle = TextStyle(
    decoration: TextDecoration.lineThrough,
    fontSize: 12,
    fontWeight: FontWeight(400),
    color: lightTextColor,
  );
  static TextStyle descriptionTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight(400),
    color: textColor,
  );
  static TextStyle moreTextStyle = TextStyle(
    color: lightTextColor, 
    fontSize: 14
  );
}
