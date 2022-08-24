// ignore_for_file: file_names

import 'package:ecommerc/Core/Localization/changelocal.dart';
import 'package:ecommerc/View/Widget/language/buttonlang.dart';
import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<Loclacontroller> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          Buttonlang(
            textbutton: 'Ar',
            onPressed: () {
              controller.changlang("ar");
              Get.offNamed(AppRout.onboarding);
            },
          ),
          Buttonlang(
            textbutton: 'EN',
            onPressed: () {
              controller.changlang("en");
              Get.offNamed(AppRout.onboarding);
            },
          ),
        ],
      ),
    ));
  }
}
