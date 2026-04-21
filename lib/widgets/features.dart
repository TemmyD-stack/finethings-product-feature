import 'package:finethings/base/widget/other_features.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Features:",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                        SizedBox(height: 15,),
                        OtherFeatures(
                          lightText:
                              'High-Quality PU Leather / Polyester Lining',
                          boldText: 'Material',
                        ),
                        OtherFeatures(
                          lightText: 'Approx. 11" L x 7.5" H x 4.3" W',
                          boldText: 'Dimensions',
                        ),
                        OtherFeatures(
                          lightText: 'Detachable & Adjustable Long Strap',
                          boldText: 'Strap Type',
                        ),
                        OtherFeatures(
                          lightText:
                              'Main compartment with inner zip & slip pockets',
                          boldText: 'Interior',
                        ),
                      ],
                    );
  }
}