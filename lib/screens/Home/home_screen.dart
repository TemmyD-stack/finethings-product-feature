import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/screens/all_products_screen.dart';
import 'package:finethings/widgets/home_board.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          color: AppStyles.mainColor,
          // alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black, width: 2),
                    image: DecorationImage(
                      fit: BoxFit.cover,

                      image: Image.asset('assets/images/bag_logo.png').image,
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.55,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          Text('Search'),
                        ],
                      ),
                      Icon(Icons.filter_list_sharp, color: Colors.grey),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.person_outline, color: AppStyles.btnColor, size: 28),
                     SizedBox(width: 10),
                    Icon(Icons.shopping_cart_outlined, color: AppStyles.btnColor, size: 25),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppStyles.bgColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20), 
                const HomeBoard(),
                const SizedBox(height: 5), 
                const AllProductsScreen()
                ],
            ),
          ),
        ),
      ),
    );
  }
}
