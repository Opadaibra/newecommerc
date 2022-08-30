import 'package:ecommerc/Controller/auth/logInController.dart';
import 'package:ecommerc/Core/functions/ValidInput.dart';
import 'package:ecommerc/Core/functions/exitappalert.dart';
import 'package:ecommerc/View/Widget/CustomButton.dart';
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
          title: Text("9".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
          centerTitle: true,
          backgroundColor: AppColor.backGround,
          elevation: 0,
        ),
        body: WillPopScope(
          onWillPop: exitappalert,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: ScrollConfiguration(
              behavior: const ScrollBehavior(
                  // ignore: deprecated_member_use
                  androidOverscrollIndicator:
                      AndroidOverscrollIndicator.stretch),
              child: Form(
                key: controller.formState,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Logoauth(),
                    const SizedBox(
                      height: 20,
                    ),
                    Customtitltetextauth(
                      title: "10".tr,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Custombodyauth(body: "11".tr),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                        valid: (val) {
                          return validinput(val!, 5, 100, "email");
                        },
                        hinttext: "12".tr,
                        labeltext: "18".tr,
                        iconData: Icons.email_outlined,
                        mycontroller: controller.email,
                        textInputType: TextInputType.emailAddress),
                    GetBuilder<LogInControllerImp>(builder: (controller) {
                      return CustomTextField(
                          valid: (val) {
                            return validinput(val!, 5, 30, "password");
                          },
                          hinttext: "13".tr,
                          labeltext: "19".tr,
                          obs: controller.isshowpassword,
                          iconData: controller.isshowpassowrdicon,
                          textInputType: TextInputType.visiblePassword,
                          mycontroller: controller.password,
                          ontapicon: () {
                            controller.showpassowrd();
                            controller.showpasswordicon();
                          });
                    }),
                    InkWell(
                        onTap: () {
                          controller.gotoforgetpassword();
                        },
                        child: Text("14".tr, textAlign: TextAlign.start)),
                    Custombutton(
                      text: "15".tr,
                      onPressed: () {
                        controller.login();
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextauth(
                      text1: "16".tr,
                      text2: "17".tr,
                      onTap: () {
                        controller.gotosignup();
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
