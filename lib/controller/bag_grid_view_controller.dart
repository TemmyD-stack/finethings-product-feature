import 'package:get/get.dart';
class BagGridViewController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void setSelectedBag(int index) {
    selectedIndex.value = index;
  }
}
