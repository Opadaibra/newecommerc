import 'package:ecommerc/Controller/auth/successresetcontoller.dart';
import 'package:ecommerc/View/Widget/CustomButton.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Successpassword extends StatelessWidget {
  const Successpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccesssresetControllerImp controller =
        Get.put(SuccesssresetControllerImp());

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
              "37".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Custombutton(
                  text: "31".tr,
                  onPressed: () {
                    controller.gotologin();
                  }))
        ],
      ),
    );
  }
}
