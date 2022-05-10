import 'package:flutter/material.dart';
import 'package:testkart/Appcolors/Appcolor.dart';
import 'package:testkart/Models/Single_product_model.dart';
class Detailscreen extends StatefulWidget {
  final SingleProductModel data;
  Detailscreen({required this.data});

  @override
  _DetailscreenState createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text("reebok",style: TextStyle(
        color: AppColors.baseblackColor,
      ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }
}