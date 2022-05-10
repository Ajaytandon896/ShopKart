import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:testkart/Appcolors/Appcolor.dart';
import 'package:testkart/mybottomBar/my_Bottom_Bar.dart';
import 'package:testkart/routes/routes.dart';
import 'package:testkart/signup/signup_screen.dart';
import 'package:testkart/style/Signup_screen_style.dart';
import 'package:testkart/widgets/textfromfield.dart';
import 'package:testkart/style/login_style.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  Widget buildTopPart({required BuildContext context}) {
    String _email;
    String password;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Image.asset(
            "images/new kart.png",
            height: 130,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                MyTextFromField(
                  hintText: "E-mail",
                  obsecure: false,
                ),
                MyTextFromField(
                  hintText: "password",
                  obsecure: true,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: MaterialButton(
              onPressed: () {
                PageRouting.goToNextPage(
                  context: context,
                  navigateto: MyBottomBar(),
                );
              },
              color: Colors.transparent,
              height: 5,
              minWidth: 10,
              elevation: 0.0,
              child: Center(
                child: Text(
                  "Sign In",
                  style: SignupScreenStyle.signupButtontextStyle,
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: MaterialButton(
              onPressed: () {
                PageRouting.goToNextPage(
                  context: context,
                  navigateto: Signupscreen(),
                );
              },
              color: Colors.transparent,
              height: 5,
              elevation: 0,
              child: Center(
                child: Text(
                  "Sign up",
                  style: SignupScreenStyle.signupButtontextStyle,
                ),
              ),
            ),
          ),
          Text(
            "Forget Password?",
            style: LoginScreenStyle.forgotpasswordStylies,
          ),
        ],
      ),
    );
  }

  Widget buildBottomPart({required BuildContext context}) {
    return SizedBox(
      height: 330,
      child: Container(
        height: 30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Sign Up with Social Networks",
              style: SignupScreenStyle.signInSocialStyle,
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                children: [
                  MaterialButton(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: AppColors.basegrey40Color,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {},
                    child: Image.asset(
                      "images/facebook.png",
                      width: 25,
                    ),
                  ),
                  //google social button
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: MaterialButton(
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.basegrey40Color,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        "images/google.png",
                        width: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: MaterialButton(
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.basegrey40Color,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        "images/gmaill.png",
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(context: context),
                  buildBottomPart(context: context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
