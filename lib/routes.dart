import 'package:ecommerc/View/Screen/OnBoarding.dart';
import 'package:ecommerc/View/Screen/auth/SignUp.dart';
import 'package:ecommerc/View/Screen/auth/forgetpassword.dart';
import 'package:ecommerc/View/Screen/auth/login.dart';
import 'package:ecommerc/View/Screen/auth/resetpassword.dart';
import 'package:ecommerc/View/Screen/auth/verifycode.dart';
import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  //Auth
  AppRout.login: (context) => const Login(),
  AppRout.signup: (context) => const SignUp(),
  AppRout.forgetpassword: (context) => const ForgetPassword(),
  AppRout.verifycode: (context) => const Verifycode(),
  AppRout.resetpassword: (context) => const ResetPassword(),
  //OnBoarding
  AppRout.onboarding: (context) => const OnBoarding()
};
