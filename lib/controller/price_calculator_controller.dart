import 'package:get/get.dart';

class PriceCalculatorController extends GetxController {
  final Map<String, dynamic> bag;
   
  PriceCalculatorController({required this.bag});
   var count = 0.obs;

   double get priceEach => (bag['price'] ?? 0.0).toDouble();
   double get cost => count.value * priceEach;
  void increment() {
    count.value++;
  }
  void decrement() {
    if (count.value > 0) {
      count.value--;
    }
  }
}