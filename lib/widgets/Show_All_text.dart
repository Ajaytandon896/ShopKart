import 'package:flutter/material.dart';
import 'package:testkart/Appcolors/Appcolor.dart';
class ShowAllWidget extends StatelessWidget {
  final String leftText;
  ShowAllWidget({required this.leftText});


  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
              fontSize: 17,
              color: AppColors.baseblackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Show All",
            style: TextStyle(
              fontSize: 17,
              color: AppColors.baseDarkPinkColor,
            ),
          ),
        ],
      ),
    );
  }
}
