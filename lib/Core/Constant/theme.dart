import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
    fontFamily: "PlayfairDisplay",
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 17),
      bodyText2: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.normal,
          fontSize: 14),
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    ));
ThemeData themeArabic = ThemeData(
    fontFamily: "Cairo",
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 17),
      bodyText2: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.normal,
          fontSize: 14),
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    ));
