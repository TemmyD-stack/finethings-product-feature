import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:finethings/screens/Home/home_screen.dart';
import 'package:finethings/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:finethings/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({super.key});


  // dependency Injection
  final BottomNavController controller = Get.put(BottomNavController());


  final appScreens = [
    const HomeScreen(),
    const CartScreen(),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
      body: appScreens[controller.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.onItemTapped,
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: AppStyles.mainColor,
        unselectedItemColor: AppStyles.lightTextColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_outlined),
            activeIcon: const Icon(Icons.shopping_cart_sharp),
            label: 'Cart',
          ),
         
        ],
      ),
    );
    });
  }
}