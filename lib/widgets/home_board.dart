import 'package:finethings/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class HomeBoard extends StatelessWidget {
  const HomeBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("DISCOUNTED STATEMENT BAGS", style: AppStyles.headLineStyle),
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 35),
          decoration: BoxDecoration(
            color: AppStyles.mainColor2,
            border: Border(
              bottom: BorderSide(color: Color(0xFFC69C6D), width: 2.0),
              right: BorderSide(color: Color(0xFFC69C6D), width: 2.0),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFBCAAA4),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(3),
          ),
          child: Column(
            children: [
              Text("JOIN TODAY", style: AppStyles.headLineStyle.copyWith(fontWeight: FontWeight.w500)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Better bags. Bolder deals. \nJoin the community to unlock exclusive member pricing and hidden discounts.",
                  style: AppStyles.descriptionTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: AppStyles.mainColor),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Text(
                  "View Memberships",
                  style: AppStyles.headLineStyle1.copyWith(
                    color: AppStyles.mainColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
