import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/base/widget/other_features.dart';
import 'package:finethings/controller/features_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Features extends StatelessWidget {
  final Map<String, dynamic> bag;
  final FeaturesController controller = Get.put(FeaturesController());

  Features({super.key, required this.bag}) {
    controller.updateBag(bag);
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final features = controller.bag['features'];

      if (features == null) {
        return const SizedBox.shrink();
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Features:",
            style: AppStyles.descriptionTextStyle.copyWith(
              fontWeight: FontWeight(600),
            ),
          ),
          SizedBox(height: 15),
          OtherFeatures(lightText: features['material'], boldText: 'Material'),
          OtherFeatures(lightText: features['dimensions'], boldText: 'Dimensions',),
          OtherFeatures(lightText: features['strap_type'], boldText: 'Strap Type',),
          OtherFeatures(lightText: features['hardware'], boldText: 'Hardware'),
          OtherFeatures(lightText: features['interior'], boldText: 'Interior'),
        ],
      );
    });
  }
}
