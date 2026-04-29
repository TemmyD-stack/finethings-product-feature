import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/controller/price_calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PriceCalculator extends StatelessWidget {
  final Map<String, dynamic> bag;
  final PriceCalculatorController controller;

  PriceCalculator({super.key, required this.bag})
      : controller = Get.put(
          PriceCalculatorController(bag: bag), 
          
        );
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Quantity:",  style: AppStyles.descriptionTextStyle.copyWith(fontWeight: FontWeight(600)),),
            SizedBox(height: 10),

            Row(
              children: [
                GestureDetector(
                  onTap: () => controller.decrement(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppStyles.mainColor, width: 1),
                       borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text('-', style: AppStyles.textStyle1.copyWith(fontWeight: FontWeight(600)),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('${controller.count}', style: AppStyles.priceStyle.copyWith(fontWeight: FontWeight(600)),)
                  ),
                GestureDetector(
                  onTap: ()=> controller.increment(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppStyles.mainColor, width: 1),
                       borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text('+', style: AppStyles.textStyle1.copyWith(fontWeight: FontWeight(600)),),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Cost:",  style: AppStyles.descriptionTextStyle.copyWith(fontWeight: FontWeight(600)),),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: AppStyles.mainColor, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text('\$${controller.cost}', style: AppStyles.descriptionTextStyle.copyWith(fontWeight: FontWeight(600)),),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
