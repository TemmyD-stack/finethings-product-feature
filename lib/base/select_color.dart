import 'package:finethings/controller/select_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectColor extends StatelessWidget {
   SelectColor({super.key});

  final List<Map<String, dynamic>> colorImageData = [
    {'color': const Color.fromARGB(255, 149, 49, 42), 'image': 'assets/images/red_bag.png'},
    {'color': Colors.black, 'image': 'assets/images/black_bag.png'},
    {'color': const Color.fromARGB(255, 39, 12, 2), 'image': 'assets/images/brown_bag.png'},
    {'color': const Color.fromARGB(255, 234, 113, 153), 'image': 'assets/images/pink_bag.png'},
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
                          ? Colors.blueGrey 
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