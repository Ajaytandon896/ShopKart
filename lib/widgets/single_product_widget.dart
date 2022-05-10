import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testkart/Appcolors/Appcolor.dart';
class SingleProductWidget extends StatelessWidget {
final String productImage;
final String productName;
final String productModel;
final double productPrice;
final double productOldPrice;
final Function onPressed;
SingleProductWidget(
    {
  required this.productPrice,
  required this.productModel,
  required this.productImage,
  required this.productName,
  required this.productOldPrice,
  required this.onPressed,
}
);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container(
              width: double.infinity,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                color: AppColors.basegrey10Color,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(productImage),
                ),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 20,
                    color: AppColors.baseDarOrangeColor,
                  ),
                onPressed:() {},
              ),
            ),
            ),
            Expanded(child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      productName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    productModel,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.baseDarkPinkColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text("\$ $productPrice",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold,),
                      ),
                      SizedBox(width: 15,),
                      Text("\$ $productOldPrice",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),

                      ),
                    ],
                  )
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
