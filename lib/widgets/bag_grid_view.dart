import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/base/widget/product_header.dart';
import 'package:finethings/controller/bag_grid_view_controller.dart';
import 'package:finethings/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BagGridView extends StatelessWidget {
  final Map<String, dynamic> bag;
  final int index;

   BagGridView({super.key, required this.bag, required this.index});
  final BagGridViewController controller = Get.put(BagGridViewController());

  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: () {
        // Standard Navigator
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(bag: bag),
          ),
        );
      },

      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(right: 8),
        
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.1,
              child: Container(
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${bag['image']}'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            ProductHeader(bag: bag)
          ],
        ),
      ),
    );
  }
}