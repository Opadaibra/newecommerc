// ignore_for_file: file_names

import 'package:ecommerc/Controller/OnBoardingContoller.dart';
import 'package:ecommerc/View/Widget/CustomButton.dart';
import 'package:ecommerc/View/Widget/CustomSlider.dart';
import 'package:ecommerc/View/Widget/dotController.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backGround,
        body: SafeArea(
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: CustomSlider(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(children: [
                    const DotController(),
                    const Spacer(flex: 2),
                    CustomButton(
                      text: "8".tr,
                    ),
                  ]))
            ],
          ),
        ));
  }
}
