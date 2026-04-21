import 'package:finethings/controller/price_calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PriceCalculator extends StatelessWidget {
 PriceCalculator({super.key});

  final PriceCalculatorController controller = Get.put(
    PriceCalculatorController(),
  );
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Quantity:",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            SizedBox(height: 10),

            Row(
              children: [
                GestureDetector(
                  onTap: () => controller.decrement(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black, width: 1),
                       borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text('-'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('${controller.count}')
                  ),
                GestureDetector(
                  onTap: ()=> controller.increment(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black, width: 1),
                       borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text('+'),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Cost:",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text('\$${controller.cost}'),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
