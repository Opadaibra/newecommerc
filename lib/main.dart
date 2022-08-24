import 'package:ecommerc/View/Screen/OnBoarding.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:ecommerc/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17),
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColor.black),
          )),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
