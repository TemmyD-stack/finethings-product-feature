import 'package:get/get.dart';

class SelectColorController extends GetxController {
 
  var selectedImage = ''.obs;

 
  void initImage(String imagePath) {
    selectedImage.value = imagePath;
  }

  void updateBagImage(String path) {
    selectedImage.value = path;
  }
}