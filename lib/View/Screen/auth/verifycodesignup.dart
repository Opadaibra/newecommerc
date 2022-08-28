import 'package:ecommerc/Controller/auth/verifycode.dart';
import 'package:ecommerc/Controller/auth/verifycodesignupcontroller.dart';

import 'package:ecommerc/View/Widget/auth/customtitleauth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifycodeSignUp extends StatelessWidget {
  const VerifycodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController email = TextEditingController();
    // TextEditingController password = TextEditingController();
    VerifycodesignupControllre controller =
        Get.put(VerifycodesignupControllreImp());
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
          title: Text("42".tr,
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
                Customtitltetextauth(title: "43".tr),
                const SizedBox(
                  height: 20,
                ),
                OtpTextField(
                  showFieldAsBox: true,
                  showCursor: false,
                  fieldWidth: 50,
                  numberOfFields: 5,
                  borderColor: AppColor.primary,
                  focusedBorderColor: AppColor.primary,
                  borderRadius: BorderRadius.circular(20),
                  onSubmit: (String code) {
                    controller.gotosuccesssignup();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 30,
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
