import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: AppStyles.mainColor, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text("ADD TO CART", style:TextStyle(color: AppStyles.mainColor),)),
    );
  }
}