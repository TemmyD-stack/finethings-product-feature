import 'package:flutter/material.dart';

class AppStyles {
  static Color mainColor = Colors.black;
  static Color secondaryColor = Colors.grey;
  static Color primaryColor = Colors.white;
  static Color tertiaryColor = Colors.blueGrey;
  static Color starColor = Colors.amberAccent;
  static Color redColor = const Color.fromARGB(255, 149, 49, 42);
  static Color blackColor = const Color.fromARGB(255, 0, 0, 0);
  static Color pinkColor = const Color.fromARGB(255, 234, 113, 153);
  static Color brownColor = const Color.fromARGB(255, 39, 12, 2);

  static TextStyle textStyle1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle priceStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight(800),
  );
  static TextStyle discountPriceStyle = TextStyle(
    decoration: TextDecoration.lineThrough,
    fontSize: 10,
    fontWeight: FontWeight(400),
    color: tertiaryColor,
  );
  static TextStyle descriptionTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight(400),
    color: mainColor,
  );
  static TextStyle moreTextStyle = TextStyle(
    color: tertiaryColor, 
    fontSize: 12
  );
}
