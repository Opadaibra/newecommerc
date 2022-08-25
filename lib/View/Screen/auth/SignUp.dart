import 'package:ecommerc/Controller/auth/signUp.Controller.dart';
import 'package:ecommerc/View/Widget/auth/CustomButtonAuth.dart';
import 'package:ecommerc/View/Widget/auth/CustomTextField.dart';
import 'package:ecommerc/View/Widget/auth/customtextauth.dart';
import 'package:ecommerc/View/Widget/auth/customtitleauth.dart';
import 'package:ecommerc/View/Widget/auth/logoauth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widget/auth/customtexttbodyauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController email = TextEditingController();
    // TextEditingController password = TextEditingController();
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: AppColor.grey,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text("Sign Up",
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
                  height: 10,
                ),
                const Logoauth(
                  logosize: 140,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Customtitltetextauth(
                  title: "Welcome ",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Custombodyauth(
                  body:
                      "Sign Up with Your Email And Password OR Continue With Social Media",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  hinttext: "Enter Your Username",
                  labeltext: "Username",
                  iconData: Icons.person,
                  mycontroller: controller.username,
                ),
                CustomTextField(
                  hinttext: "Enter Your Email",
                  labeltext: "Email",
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email,
                ),
                CustomTextField(
                  hinttext: "Enter Your Phone",
                  labeltext: "Phone",
                  iconData: Icons.phone,
                  mycontroller: controller.password,
                ),
                CustomTextField(
                  hinttext: "Enter Your Password",
                  labeltext: "Password",
                  iconData: Icons.lock_outline,
                  mycontroller: controller.password,
                ),

                //const Text("Forget Password", textAlign: TextAlign.start),
                Customauthbutton(
                  text: "Sign Up ",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextauth(
                    text1: "you Already Have an account?",
                    text2: "Sign In",
                    onTap: () {
                      controller.gotosignin();
                    })
              ],
            ),
          ),
        ));
  }
}
