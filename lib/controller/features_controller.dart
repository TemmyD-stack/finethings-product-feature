import 'package:get/get.dart';

class FeaturesController  extends GetxController{
   final RxMap<String, dynamic> bag = <String, dynamic>{}.obs;
    void updateBag(Map<String, dynamic> newBag) {
    bag.value = newBag;
  }
}