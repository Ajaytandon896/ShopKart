import 'package:flutter/material.dart';
import 'package:testkart/Appcolors/Appcolor.dart';
import 'package:testkart/widgets/mybutton.dart';
class ProfileScreen extends StatelessWidget {

AppBar buildAppBar(){
return AppBar(
  elevation: 0.70,
  centerTitle: true,
  backgroundColor: Colors.white,
  title: Text(
    "Account",
    style: TextStyle(
      color: AppColors.baseblackColor,
    ),
  ),
  actions: [
    IconButton(onPressed: () {},
        icon: Image.asset(
          "images/editbutton.png",
          height: 25,
        ),
    ),
  ],
  shadowColor: AppColors.baseblackColor,
 );
}
Widget buildlistTileWidget({required String leading,required String trailing} ){
  return ListTile(
    tileColor:Colors.white,
    leading: Text(
      leading,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: Text(
      trailing,
      style: TextStyle(
        fontSize: 14,
      ),
    ),
  );
}

Widget buildBottomlistTile({required String leading, required String trailing}){
  return  ListTile(
    onTap: () {},
    tileColor: Colors.white,
    leading: Text(
      leading,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: Wrap(
      spacing: 5,
      children: [
        Text(trailing,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ),
        Icon(Icons.arrow_forward_ios_outlined,
          size: 15,
        ),
      ],
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.basegrey10Color,
      appBar:buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 200,
            margin:  EdgeInsets.only(bottom: 10),
            color: Colors.white,
            child: Padding(padding:EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                        "https://media-exp1.licdn.com/dms/image/C4D03AQEtle-lMUM1rg/profile-displayphoto-shrink_400_400/0/1614781176080?e=1651708800&v=beta&t=KeZ1HC4YSBvojcVQtohZGqNdUhBQaJeTWo_FYHZ37Fs"
                      ),
                    ),
                  ),
                  Text(
                    "Rahul Tandon",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Prayagraj",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            color: Colors.white,
            child: Column(
              children: [
                buildlistTileWidget(leading: "Full Name", trailing: "Rahul Tandon"),
                Divider(),
                buildlistTileWidget(leading: "Email", trailing: "rahultandon896@gmail.com"),
                Divider(),
                buildlistTileWidget(leading: "Address", trailing: "236476273648623"),
                Divider(),
                buildlistTileWidget(leading: "Payment", trailing: "4563\t****\t****\t7435"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.white,
            child: Column(
              children: [
                buildBottomlistTile(
                  leading:"Wishlist",
                  trailing:"5",
                ),
                Divider(),
                buildBottomlistTile(
                  leading:"My Order's",
                  trailing:"1 in transit",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Mybutton(
              color: AppColors.baseDarkPinkColor,
              onPress: () {},
               text: "Log Out",
            ),
          ),
        ],
      ),
    );
  }
}
