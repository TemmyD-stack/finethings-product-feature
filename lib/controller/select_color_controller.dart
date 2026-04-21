import 'package:get/get.dart';

class SelectColorController extends GetxController {
  var selectedImage = 'assets/images/red_bag.png'.obs;

  void updateImage(String path) => selectedImage.value = path;
}
