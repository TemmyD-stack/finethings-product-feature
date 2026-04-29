import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/base/utils/app_json.dart';
import 'package:finethings/widgets/bag_grid_view.dart';
import 'package:flutter/material.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text('All finethingsNG Products'),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
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
        ),
      ),
    );
  }
}