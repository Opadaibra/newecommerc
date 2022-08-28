import 'package:ecommerc/Controller/auth/successsignupcontoller.dart';
import 'package:ecommerc/View/Widget/auth/CustomButtonAuth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccesssignupcontollerImp controller = Get.put(SuccesssignupcontollerImp());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: AppColor.primary,
            size: 200,
          ),
          Center(
            child: Text(
              "38".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Customauthbutton(
                  text: "31".tr,
                  onPressed: () {
                    controller.gotologin();
                  }))
        ],
      ),
    );
  }
}
