import 'package:get/get.dart';

class PriceCalculatorController extends GetxController {
   var count = 0.obs;
   final double priceEach = 56;
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