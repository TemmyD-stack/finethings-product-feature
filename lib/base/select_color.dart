import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/controller/select_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectColor extends StatelessWidget {
  final Map<String, dynamic> bag;
  SelectColor({super.key, required this.bag, required String tag});

  late final List<Map<String, dynamic>> colorImageData = bag['color_image'];

  late final SelectColorController controller = Get.put(
    SelectColorController(),
    tag: bag['id'].toString(),
  );

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 30,
      child: Container(
        padding: EdgeInsets.all(10),

        child: Column(
          children: colorImageData.map((data) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () => controller.updateBagImage(data['image']),
                child: Obx(
                  () => Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: controller.selectedImage.value == data['image']
                            ? AppStyles.btnColor
                            : Colors.transparent,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.asset(
                          'assets/images/${data['image']}',
                        ).image,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
