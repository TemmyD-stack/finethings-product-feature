import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.mainColor,
        title: Row(
          children: [
            Icon(Icons.arrow_back, color: AppStyles.btnColor,),
            SizedBox(width: 10,),
            Text("Cart", style: AppStyles.headLineStyle.copyWith(color: AppStyles.btnColor),),
          ],
        ),
      ),
      body: Container(
        color: AppStyles.bgColor,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.shopping_cart_checkout, color: AppStyles.mainColor,),
             Text("Items Added to cart will be displayed here", style: AppStyles.headLineStyle1,)
           ],
          ),
        ),
      ),
    );
  }
}