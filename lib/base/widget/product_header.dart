import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class ProductHeader extends StatelessWidget {
    final Map<String, dynamic> bag;
   final bool isFavorite;
   final bool? isHomePage;
  const ProductHeader({super.key, required this.bag, this.isFavorite = false, required this.isHomePage});

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
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  size: 18,
                  color: AppStyles.btnColor2,
                  fontWeight: FontWeight(500),
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
                  Icon(Icons.star, size: 15, color: AppStyles.starColor,),
                  Text(
                    '${bag['ratings']}',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight(600)),
                  ),
                   Text(
                    '/5',
                    style: TextStyle(fontSize: 10,  color: AppStyles.lightTextColor,),
                  ),
                ],
              ),
              isHomePage == true ? SizedBox.shrink() : Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: AppStyles.btnColor2,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  bag['offer'] ?? '',
                  style: TextStyle(
                    color: AppStyles.bgColor,
                    fontSize: 10,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ) 
            ],
          ),

        ],
      ),
    );
  }
}
