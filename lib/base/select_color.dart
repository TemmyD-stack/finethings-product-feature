import 'package:finethings/base/res/app_media.dart';
import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/controller/select_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectColor extends StatelessWidget {
   SelectColor({super.key});

  final List<Map<String, dynamic>> colorImageData = [
    {'color': AppStyles.redColor, 'image': AppMedia.redBag},
    {'color': AppStyles.blackColor, 'image': AppMedia.blackBag},
    {'color': AppStyles.brownColor, 'image': AppMedia.brownBag},
    {'color': AppStyles.pinkColor, 'image': AppMedia.pinkBag},
  ];
  
  final SelectColorController controller = Get.put(
    SelectColorController(),
  );
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      right: 30,
      child: Container(
        padding: EdgeInsets.all(10),
        
        child: Column(
          children: colorImageData.map((data) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () => controller.updateImage(data['image']),
                child: Obx(()=> Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: data['color'],
                     border: Border.all(
                      color: controller.selectedImage.value == data['image'] 
                          ? AppStyles.tertiaryColor 
                          : Colors.transparent,
                      width: 2,
                    ),
                    
                    ),
                  
                ),)
              ),
            );
          }).toList(),
        
          
        ),
      ),
    );
  }
}