import 'dart:io';

import 'package:ecommerc/View/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> exitappalert() {
  Get.defaultDialog(title: "46".tr, middleText: "47".tr, actions: [
    Custombutton(
        text: "48".tr,
        onPressed: () {
          exit(0);
        }),
    Custombutton(
        text: "49".tr,
        onPressed: () {
          Get.back();
        }),
  ]);
  return Future.value(true);
}
