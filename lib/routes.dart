import 'package:ecommerc/View/Screen/OnBoarding.dart';
import 'package:ecommerc/View/Screen/auth/login.dart';
import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  AppRout.login: (context) => const Login(),
  AppRout.onboarding: (context) => const OnBoarding()
};
