// ignore_for_file: file_names
import 'package:ecommerc/Controller/OnBoardingContoller.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  const CustomButton({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        margin: const EdgeInsets.only(bottom: 30),
        child: Material(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(50),
          child: MaterialButton(
            onPressed: () {
              controller.next();
              controller.changetext();
            },
            // color: AppColor.primary,
            textColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
            child: Text(text),
          ),
        ));
  }
}
