import 'package:finethings/base/utils/app_json.dart';
import 'package:finethings/widgets/all_products_header.dart';
import 'package:finethings/widgets/bag_grid_view.dart';
import 'package:flutter/material.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: 40),
          AllProductsHeader(),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), 
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.9,
            ),
            itemCount: bagCollection.length,
            itemBuilder: (context, index) {
              var singleBag = bagCollection[index];
              return BagGridView(bag: singleBag, index: index);
            },
          ),
        ],
      );
  }
}
