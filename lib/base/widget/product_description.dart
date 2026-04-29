import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/controller/product_description_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDescription extends StatelessWidget {
   final Map<String, dynamic> bag;
  ProductDescription({super.key, required this.bag});

  final ProductDescriptionController controller = Get.put(
    ProductDescriptionController(),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              bag['description'],
              maxLines: controller.isExpanded.value ? null : 2,
              overflow: controller.isExpanded.value ? TextOverflow.visible : TextOverflow.ellipsis,
              style: AppStyles.descriptionTextStyle,
              textAlign: TextAlign.justify,
            ),
          ),
          GestureDetector(
            onTap:() => controller.toggleExpanded(),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                padding: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppStyles.tertiaryColor, width: 2.0),
                  ),
                ),
                child: Text(
                  controller.isExpanded.value ? 'Less' : 'More',
                  style: AppStyles.moreTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
