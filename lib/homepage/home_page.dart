import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testkart/Appcolors/Appcolor.dart';
import 'package:testkart/data/home_page_data.dart';
import 'package:testkart/detailScreen/Detail_screen.dart';
import 'package:testkart/loginscreen/tabbar_data.dart';
import 'package:testkart/routes/routes.dart';
import 'package:testkart/style/Homepage_style.dart';
import 'package:testkart/widgets/Show_All_text.dart';
import 'package:testkart/widgets/single_product_widget.dart';
class Homepage extends StatelessWidget {

  const Homepage({Key? key}) : super(key: key);
  Widget buildSocialButton({required Widget child,required Function onPressed})
  {
    return MaterialButton(
      onPressed: () {},
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.1,
          color: AppColors.baseDarkPinkColor,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child:child,
    );
  }
  AppBar  buildAppBar(){
    return AppBar(
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color:Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize:15,
          fontWeight: FontWeight.normal,
        ),
        unselectedLabelColor: AppColors.baseblackColor,
        labelColor: AppColors.baseLightPinkColor,
        tabs: [
          Text("All"),
          Text("Clothing"),
          Text("shoes"),
          Text("Accesories"),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text(
                "Welcome",
            style: HomeScreenStylies.appBarUppertitleStylies,
            ),
          ),
          Text("Shopping",
          style: HomeScreenStylies.appBarBottomtitleStylies,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: MaterialButton(
            shape: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.1,
                color: AppColors.basegrey40Color,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            onPressed: () {},
            child: Image.asset(
              "images/edit.png",
              width: 25,
            ),
          ),
        ),
      Padding(
        padding: const EdgeInsets.only(left: 1.0),
        child: MaterialButton(
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.1,
              color: AppColors.basegrey40Color,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: () {},
          child: Image.asset(
            "images/search.png",
            width: 25,
          ),
        ),
      ),

      ],
    );
  }
  Widget buildAdvertismentPlace(){
    return Padding(padding: EdgeInsets.all(18.0),
      child: Container(
        height: 170,
        child: Carousel(

          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000 ),
          showIndicator: false,
          images: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.colombiaonline.com/blog/wp-content/uploads/2020/03/online-ads.jpg",
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.mktr.ai/wp-content/uploads/2019/10/Online-Advertising-Platforms-800x600.jpg",
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTrendingProduct({required String productImage,required String productName,required String productModel,required double productPrice}){
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30, right:20, bottom: 20,),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
              child: Material(
            shape:RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
                child: Image.network(productImage),
          ),
          ),
          Expanded(
            flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productName,style: HomeScreenStylies.trendingProductNameStyle,
                    ),
                    SizedBox(width: 5,),
                    Text(productModel,
                      style: HomeScreenStylies.trendingProductModelStyle,
                    ),
                  ],
                ),
              ),
          ),
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
            child: MaterialButton(
              color: AppColors.baseLightPinkColor,
              elevation: 0,
              height: 45,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(0.7),
              ),
              onPressed: () {},
              child: Text("\$ $productPrice",
                style: HomeScreenStylies.trendingProductPriceStyle,),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
           ListView(
             physics: BouncingScrollPhysics(),
             children: [
              buildAdvertismentPlace(),

               ShowAllWidget(
                 leftText: "New Arrival",
               ),
               Padding(
                 padding: EdgeInsets.symmetric(
                     horizontal: 12.0
                 ),
                 child: GridView.builder(
                    shrinkWrap: true,
                     primary: true,
                     itemCount: sigleProductData.length,
                     physics: NeverScrollableScrollPhysics(),
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       childAspectRatio:0.7,
                     ),
                     itemBuilder: (context,index){
                      var data = sigleProductData[index];
                      return SingleProductWidget(
                           onPressed: () {
                             PageRouting.goToNextPage(
                               context: context,
                               navigateto:Detailscreen(
                                 data: data,
                               ),
                             );
                           },
                          productImage: data.productImage,
                        productModel: data.productModel,
                        productName: data.productName,
                        productOldPrice: data.productOldPrice,
                        productPrice: data.productPrice,
                      );
                     },
                 ),

               ),
               Divider(
                 indent: 15,
                 endIndent: 10,
               ),
               ShowAllWidget(
                 leftText: "What\'s trending",
               ),
                buildTrendingProduct(
                    productImage:
                    'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/33311a78deca4628a115abc9008e8034_9366/Training_Weave_Backpack_Black_GD0696_01_standard.jpg',
                    productModel: 'Training',

                    productName: 'backpack',

                    productPrice: 15,
                ),
               buildTrendingProduct(
                 productImage:

                 'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',

                 productModel: 'tops',
                 productName: 'Tank top',
                 productPrice: 28,
               ),
               buildTrendingProduct(
                 productImage:

                 'https://assets.reebok.com/images/w_600,f_auto,q_auto/284a6dbadf75425fa1dbacfd00767fdd_9366/Nano_X1_Lux_Shoes_White_FZ1418_02_standard.jpg',

                 productModel: 'Men Training',
                 productName: 'Nano x1 lux',
                 productPrice: 25,
               ),
               ShowAllWidget(
                 leftText: "History",
               ),
      Container(
        height: 240,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          primary: true,
          itemCount: sigleProductData.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio:1.5, crossAxisCount: 1),
          itemBuilder: (context,index){
            var data = sigleProductData[index];
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
      ),
             ],
           ),
            TabbarData(
              productData: colothsData,
            ),
            TabbarData(
              productData:shoesData,
            ),
      TabbarData(
        productData:accessoriesData,
      ),

        ],
        ),
      ),
    );
  }
}


