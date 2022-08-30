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

Map<String, Widget Function(BuildContext context)> routes = {
  //Auth
  AppRout.login: (context) => const Login(),
  AppRout.signup: (context) => const SignUp(),
  AppRout.forgetpassword: (context) => const ForgetPassword(),
  AppRout.verifycode: (context) => const Verifycode(),
  AppRout.verifycodesignup: (context) => const VerifycodeSignUp(),
  AppRout.resetpassword: (context) => const ResetPassword(),
  AppRout.success: (context) => const Successpassword(),
  AppRout.successsignup: (context) => const SuccessSignup(),
  //OnBoarding
  AppRout.onboarding: (context) => const OnBoarding()
};
