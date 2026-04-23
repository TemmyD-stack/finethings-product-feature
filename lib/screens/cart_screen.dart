import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/base/select_color.dart';
import 'package:finethings/base/widget/add_to_cart_btn.dart';
import 'package:finethings/base/widget/product_description.dart';
import 'package:finethings/base/widget/product_header.dart';
import 'package:finethings/controller/select_color_controller.dart';
import 'package:finethings/widgets/features.dart';
import 'package:finethings/widgets/price_calculator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final SelectColorController controller = Get.put(SelectColorController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 350.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                     
                      Positioned.fill(
                        child: Image.asset(
                          controller.selectedImage.value,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new_sharp,
                              color: AppStyles.mainColor,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'finethingsNG',
                              style: AppStyles.textStyle1
                            ),
                          ],
                        ),
                      ),
                       SelectColor(),
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
                      ProductHeader(),
                      ProductDescription(),
                      SizedBox(height: 30),
                      Features(),
                      SizedBox(height: 30),
                      PriceCalculator(),
                      SizedBox(height: 30),
                      AddToCartBtn(),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
