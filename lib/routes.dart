import 'package:ecommerc/Core/middleware/mymiddleware.dart';
import 'package:ecommerc/View/Screen/Language.dart';
import 'package:ecommerc/View/Screen/OnBoarding.dart';
import 'package:ecommerc/View/Screen/auth/SignUp.dart';
import 'package:ecommerc/View/Screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerc/View/Screen/auth/login.dart';
import 'package:ecommerc/View/Screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerc/View/Screen/auth/forgetpassword/sucsses.dart';
import 'package:ecommerc/View/Screen/auth/sucssessignup.dart';
import 'package:ecommerc/View/Screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerc/View/Screen/auth/verifycodesignup.dart';
import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [Mymiddleware()]),

  GetPage(name: AppRout.login, page: () => const Login()),
  GetPage(name: AppRout.signup, page: () => const SignUp()),
  GetPage(name: AppRout.forgetpassword, page: () => const ForgetPassword()),
  GetPage(name: AppRout.verifycode, page: () => const Verifycode()),
  GetPage(name: AppRout.verifycodesignup, page: () => const VerifycodeSignUp()),
  GetPage(name: AppRout.resetpassword, page: () => const ResetPassword()),
  GetPage(name: AppRout.success, page: () => const Successpassword()),
  GetPage(name: AppRout.successsignup, page: () => const SuccessSignup()),
  //OnBoarding
  GetPage(name: AppRout.onboarding, page: () => const OnBoarding()),
];
 