// ignore_for_file: file_names

import 'package:ecommerc/Controller/OnBoardingContoller.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:ecommerc/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotController extends StatelessWidget {
  const DotController({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (contoller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBoardinglist.length,
              (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: 300),
                    width: contoller.currentpage == index ? 20 : 5,
                    height: 6,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ))
        ],
      );
    });
  }
}
