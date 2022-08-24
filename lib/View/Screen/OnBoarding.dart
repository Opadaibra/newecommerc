// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:ecommerc/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: PageView.builder(
              itemCount: onBoardinglist.length,
              itemBuilder: (context, i) => Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Text(
                        onBoardinglist[i].title!,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Image.asset(
                        onBoardinglist[i].image!,
                        width: 200,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          onBoardinglist[i].body!,
                          textAlign: TextAlign.center,
                          style:
                              const TextStyle(height: 2, color: AppColor.grey),
                        ),
                      )
                    ],
                  )),
        ));
  }
}
