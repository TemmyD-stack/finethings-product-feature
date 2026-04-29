import 'package:finethings/base/select_color.dart';
import 'package:finethings/base/widget/add_to_cart_btn.dart';
import 'package:finethings/base/widget/product_description.dart';
import 'package:finethings/base/widget/product_header.dart';
import 'package:finethings/controller/select_color_controller.dart';
import 'package:finethings/widgets/features.dart';
import 'package:finethings/widgets/price_calculator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  final dynamic bag;

   ProductDetailScreen({super.key, required this.bag});
   late final controller = Get.put(SelectColorController(), tag: bag['id'].toString());

  @override
  Widget build(BuildContext context) {
     if (controller.selectedImage.isEmpty) {
      controller.initImage(bag['image']);
    }
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 320.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                     
                      Positioned.fill(
                        child:Obx(() {
                          controller.selectedImage.value.isEmpty 
                          ? bag['image'] 
                          : controller.selectedImage.value;

                      return Container(

                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: Image.asset(
                            'assets/images/${controller.selectedImage.value}').image,
                            ),
                          ),
                      );
                        }  )
                      ),
                       SelectColor(bag: bag, tag: bag['id'].toString()),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductHeader(bag: bag,),
                      ProductDescription(bag: bag,),
                      SizedBox(height: 30),
                      Features(bag: bag,),
                      SizedBox(height: 30),
                      PriceCalculator(bag: bag,),
                      SizedBox(height: 30),
                      AddToCartBtn(),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      );
  }
}
