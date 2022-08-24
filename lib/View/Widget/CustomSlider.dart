// ignore_for_file: file_names

import 'package:ecommerc/Controller/OnBoardingContoller.dart';
import 'package:ecommerc/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onpagechagned(val);
        },
        itemCount: onBoardinglist.length,
        itemBuilder: (context, i) => Column(
              children: [
                Image.asset(
                  onBoardinglist[i].image!,
                  width: 340,
                  height: 380,
                  // fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(onBoardinglist[i].title!,
                    style: Theme.of(context).textTheme.headline1),
                // const SizedBox(
                //   height: 80,
                // ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(onBoardinglist[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1),
                )
              ],
            ));
  }
}
