import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

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
                'Luxury Danbaoly Designer Satchel',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
                    '\$56',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight(800)),
                  ),
                  Text(
                    '\$70',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 10,
                      fontWeight: FontWeight(400),
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Row(
                children: [
                  Icon(Iconsax.star_copy, size: 15, color: Colors.amberAccent,),
                  Text(
                    '4.5',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight(600)),
                  ),
                   Text(
                    '/5',
                    style: TextStyle(fontSize: 10,  color: Colors.grey,),
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
                child: Text('Exclusive Collection',  style: TextStyle(fontSize: 10,  color: Colors.blueGrey,),),
              )
            ],
          ),

        ],
      ),
    );
  }
}
