import 'package:flutter/material.dart';

class OtherFeatures extends StatelessWidget {
  final String boldText;
  final String lightText;
  const OtherFeatures({super.key, required this.boldText, required this.lightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(boldText, style: TextStyle(fontSize: 13, fontWeight: FontWeight(600)),),
          Text(lightText, style: TextStyle(fontSize: 12,),)
        ],
      ),
    );
  }
}