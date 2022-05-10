import 'package:flutter/material.dart';
import 'package:testkart/Appcolors/Appcolor.dart';
import 'package:testkart/style/Signup_screen_style.dart';
import 'package:testkart/widgets/mybutton.dart';
import 'package:testkart/widgets/textfromfield.dart';
class Signupscreen extends StatelessWidget {
  const Signupscreen({Key? key}) : super(key: key);
  Widget buildTopPart(){
    return Column(
      children: [
        Image.asset(
          "images/new kart.png",
          height:120,
        ),
        MyTextFromField(
            hintText: "Full Name",
            obsecure: false,
        ),
        MyTextFromField(
          hintText: "Email",
          obsecure: false,
        ),
        MyTextFromField(
          hintText: "Password",
          obsecure: true,
        ),
        MyTextFromField(
          hintText: "Confirm Password",
          obsecure: true,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Mybutton(
            onPress: () {},
            color: AppColors.baseDarkPinkColor,
            text: "Create An Account",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
            text: TextSpan(
              text: "By Signing up You aggree to our\n\t",
              style: SignupScreenStyle.signInAgressStyle,
              children: <TextSpan>[
                TextSpan(
                  text: "Terms",
                  style:SignupScreenStyle.termsTextStyle,
                ),
                TextSpan(
                text: " and\t",
                style:SignupScreenStyle.andTextStyle,
                ),
                TextSpan(
                  text: "Conditions of Use\t",
                  style:SignupScreenStyle.conditionsofuse,
                ),
              ],
             ),
            ),


      ],
    );
  }

  Widget buildSocialButton({required Widget child,required Function onPressed})
  {
    return MaterialButton(
      onPressed: () {},
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.5,
          color: AppColors.basegrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child:child,
    );
  }
  Widget  buildBottompart(){
        return Container(
          height: 205,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                  "Sign Up with Social Networks",
                style:SignupScreenStyle.signInSocialStyle,
              ),
              SizedBox(height: 5,
              ),
              Padding(padding:EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //facebook social button
                    buildSocialButton(
                      onPressed:() {},
                      child:
                      Image.asset(
                        "images/facebook.png",
                        width: 25,
                      ),
                    ),
                    //google social button
                    buildSocialButton(
                      onPressed:() {},
                      child:
                      Image.asset(
                        "images/google.png",
                        width: 25,
                      ),
                    ),
                    //gmail social button
                    buildSocialButton(
                      onPressed:() {},
                      child:
                      Image.asset(
                        "images/gmaill.png",
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
        ],
    ),
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            buildTopPart(),
            buildBottompart(),
          ],
        ),
      ),
    );
  }
}
