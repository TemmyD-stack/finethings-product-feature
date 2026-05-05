import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AddToCartBtn extends StatelessWidget {
 

  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 0.92,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      decoration: BoxDecoration(
        color: AppStyles.btnColor,
        border: Border.all(color: AppStyles.btnColor, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text("ADD TO CART", style:TextStyle(color: AppStyles.bgColor),)),
    );
  }
}