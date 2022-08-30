import 'package:ecommerc/Controller/auth/ForgetPasswordController.dart';
import 'package:ecommerc/Core/functions/ValidInput.dart';
import 'package:ecommerc/View/Widget/CustomButton.dart';
import 'package:ecommerc/View/Widget/auth/CustomTextField.dart';
import 'package:ecommerc/View/Widget/auth/customtitleauth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Widget/auth/customtexttbodyauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController email = TextEditingController();
    // TextEditingController password = TextEditingController();
    ForgetpasswordControllerImp controller =
        Get.put(ForgetpasswordControllerImp());
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
          title: Text("40".tr,
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
            child: Form(
              key: controller.formState,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Customtitltetextauth(
                    title: "27".tr,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Custombodyauth(body: "29".tr),
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
                    textInputType: TextInputType.emailAddress,
                  ),
                  Custombutton(
                    text: "30".tr,
                    onPressed: () {
                      controller.gotoverifycode();
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
