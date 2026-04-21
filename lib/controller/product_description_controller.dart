import 'package:get/get.dart';

class ProductDescriptionController extends GetxController {
  var isExpanded = false.obs;
  void toggleExpanded() {
    isExpanded.value = !isExpanded.value;
  }
}
