import 'package:finethings/base/utils/app_routes.dart';
import 'package:finethings/screens/all_products_screen.dart';
import 'package:finethings/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homepage: (context) => AllProductsScreen(),
        AppRoutes.productDetails: (context) =>  ProductDetailScreen(bag: null,),

      },
    );
  }
}


