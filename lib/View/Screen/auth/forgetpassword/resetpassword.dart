import 'package:ecommerc/Controller/auth/resetpasswordcontroller.dart';
import 'package:ecommerc/View/Widget/auth/CustomButtonAuth.dart';
import 'package:ecommerc/View/Widget/auth/CustomTextField.dart';
import 'package:ecommerc/View/Widget/auth/customtitleauth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Widget/auth/customtexttbodyauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController email = TextEditingController();
    // TextEditingController password = TextEditingController();
    ResetPasswordControllreImp controller =
        Get.put(ResetPasswordControllreImp());
    
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
          title: Text("41".tr,
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
                Customtitltetextauth(
                  title: "35".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                Custombodyauth(body: "34".tr),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  hinttext: "13".tr,
                  labeltext: "19".tr,
                  iconData: Icons.lock_outline,
                  mycontroller: controller.password,
                ),
                CustomTextField(
                  hinttext: "44".tr,
                  labeltext: "45".tr,
                  iconData: Icons.lock_outline,
                  mycontroller: controller.repassword,
                ),
                Customauthbutton(
                  text: "33".tr,
                  onPressed: () {
                    controller.gotosuccess();
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
