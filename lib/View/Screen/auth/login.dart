import 'package:ecommerc/Controller/auth/logInController.dart';
import 'package:ecommerc/View/Widget/auth/CustomButtonAuth.dart';
import 'package:ecommerc/View/Widget/auth/CustomTextField.dart';
import 'package:ecommerc/View/Widget/auth/customtextauth.dart';
import 'package:ecommerc/View/Widget/auth/customtitleauth.dart';
import 'package:ecommerc/View/Widget/auth/logoauth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widget/auth/customtexttbodyauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LogInControllerImp controller = Get.put(LogInControllerImp());

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Sign In",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
          centerTitle: true,
          backgroundColor: AppColor.backGround,
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior(
                // ignore: deprecated_member_use
                androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Logoauth(),
                const SizedBox(
                  height: 20,
                ),
                const Customtitltetextauth(
                  title: "Welcome Back",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Custombodyauth(
                  body:
                      "Sign in with Your Email And Password OR Continue With Social Media",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    hinttext: "Enter Your Email",
                    labeltext: "Email",
                    iconData: Icons.email_outlined,
                    mycontroller: controller.email),
                CustomTextField(
                    hinttext: "Enter Your Password",
                    labeltext: "Password",
                    iconData: Icons.lock_outline,
                    mycontroller: controller.password),
                InkWell(
                    onTap: () {
                      controller.gotoforgetpassword();
                    },
                    child: const Text("Forget Password",
                        textAlign: TextAlign.start)),
                Customauthbutton(
                  text: "Sign In ",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextauth(
                  text1: "You Don't Have an account?",
                  text2: "Sign Up",
                  onTap: () {
                    controller.gotosignup();
                  },
                )
              ],
            ),
          ),
        ));
  }
}
