import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AllProductsHeader extends StatelessWidget {
  const AllProductsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Available Offers',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppStyles.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}