import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testkart/Models/Single_product_model.dart';
import 'package:testkart/data/home_page_data.dart';
import 'package:testkart/widgets/single_product_widget.dart';
class TabbarData extends StatelessWidget {
  List<SingleProductModel>productData;
  TabbarData({required this.productData});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: true,
        itemCount: colothsData.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio:0.7, crossAxisCount: 2),
        itemBuilder: (context,index){
          var data = productData[index];
          return SingleProductWidget(
            onPressed:(){},
            productImage:data.productImage,
            productModel:data.productModel,
            productName:data.productName,
            productOldPrice:data.productOldPrice,
            productPrice:data.productPrice,
          );
        },
      ),
    );
  }
}
