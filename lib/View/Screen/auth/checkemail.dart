import 'package:ecommerc/Controller/auth/checkemailcontroller.dart';
import 'package:ecommerc/View/Widget/auth/CustomButtonAuth.dart';
import 'package:ecommerc/View/Widget/auth/CustomTextField.dart';
import 'package:ecommerc/View/Widget/auth/customtexttbodyauth.dart';
import 'package:ecommerc/View/Widget/auth/customtitleauth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkemail extends StatelessWidget {
  const Checkemail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController email = TextEditingController();
    // TextEditingController password = TextEditingController();
    CheckemailControllerImp controller = Get.put(CheckemailControllerImp());
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
          title: Text("Check email",
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
                const SizedBox(
                  height: 20,
                ),
                const Customtitltetextauth(
                  title: "Success SignUp ",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Custombodyauth(
                  body:
                      "Please Enter your Email Address to Recive A verfication code",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  hinttext: "Enter Your Email",
                  labeltext: "Email",
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email,
                ),
                Customauthbutton(
                  text: "Check ",
                  onPressed: () {
                    controller.gotosuccesSignup();
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ));
  }
}
