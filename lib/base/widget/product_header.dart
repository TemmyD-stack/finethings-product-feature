import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductHeader extends StatelessWidget {
    final Map<String, dynamic> bag;
  const ProductHeader({super.key, required this.bag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bag['name'],
                style: AppStyles.headLineStyle1,
                textAlign: TextAlign.left,
              ),

              Container(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Iconsax.shopping_cart_copy,
                  size: 25,
                  fontWeight: FontWeight(800),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${bag['price']}',
                    style: AppStyles.priceStyle,
                  ),
                  Text(
                    '\$${bag['discount']}',
                    style: AppStyles.discountPriceStyle
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Row(
                children: [
                  Icon(Iconsax.star_copy, size: 15, color: AppStyles.starColor,),
                  Text(
                    '${bag['ratings']}',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight(600)),
                  ),
                   Text(
                    '/5',
                    style: TextStyle(fontSize: 10,  color: AppStyles.secondaryColor,),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 1.0
                    )
                  )
                ),
                child: Text('Exclusive Collection',  style: AppStyles.discountPriceStyle.copyWith(decoration: TextDecoration.none),),
              )
            ],
          ),

        ],
      ),
    );
  }
}
