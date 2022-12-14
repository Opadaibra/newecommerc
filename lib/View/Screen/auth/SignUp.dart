// ignore_for_file: file_names

import 'package:ecommerc/Controller/auth/signUp.Controller.dart';
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

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController email = TextEditingController();
    // TextEditingController password = TextEditingController();
    Get.lazyPut(() => SignUpControllerImp());
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
          title: Text("17".tr,
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
          child: GetBuilder<SignUpControllerImp>(builder: (controller) {
            return Container(
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
                        height: 10,
                      ),
                      const Logoauth(
                        logosize: 140,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Customtitltetextauth(
                        title: "39".tr,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Custombodyauth(body: "24".tr),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomTextField(
                        valid: (val) {
                          return validinput(val!, 5, 30, "username");
                        },
                        hinttext: "23".tr,
                        labeltext: "20".tr,
                        iconData: Icons.person,
                        mycontroller: controller.username,
                        textInputType: TextInputType.name,
                      ),
                      CustomTextField(
                        valid: (val) {
                          return validinput(val!, 5, 100, "email");
                        },
                        hinttext: "12".tr,
                        labeltext: "18".tr,
                        iconData: Icons.email_outlined,
                        mycontroller: controller.email,
                        textInputType: TextInputType.emailAddress,
                      ),
                      CustomTextField(
                        valid: (val) {
                          return validinput(val!, 5, 10, "phone");
                        },
                        hinttext: "22".tr,
                        labeltext: "21".tr,
                        iconData: Icons.phone,
                        mycontroller: controller.phone,
                        textInputType: TextInputType.phone,
                      ),
                      GetBuilder<SignUpControllerImp>(builder: (controller) {
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
                              controller.showpassword();
                              controller.showpasswordicon();
                            });
                      }),

                      //const Text("Forget Password", textAlign: TextAlign.start),
                      Custombutton(
                        text: "17".tr,
                        onPressed: () {
                          controller.signup();
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextauth(
                          text1: "25".tr,
                          text2: "26".tr,
                          onTap: () {
                            controller.gotosignin();
                          })
                    ],
                  ),
                ),
              ),
            );
          }),
        ));
  }
}
