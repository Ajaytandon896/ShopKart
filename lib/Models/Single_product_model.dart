import 'package:flutter/material.dart';
class SingleProductModel{
  final String productName;
  final String productImage;
  final String productModel;
  final double productPrice;
  final double productOldPrice;
  final String productSecondImage;
  final String productThirdImage;
  final String productFourImage;
  SingleProductModel(
      {
         required this.productOldPrice,
        required this.productImage,
        required this.productFourImage,
        required this.productModel,
        required this.productName,
        required this.productPrice,
        required this.productSecondImage,
        required this.productThirdImage,
      }
      );
}