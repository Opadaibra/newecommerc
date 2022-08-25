// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  checkemail();
  gotoverifycode();
}

class ForgetpasswordControllerImp extends ForgetpasswordController {
  late TextEditingController email;


  @override
  checkemail() {}

  @override
  gotoverifycode() {
    Get.toNamed(AppRout.verifycode);
  }

  @override
  void onInit() {
    email = TextEditingController();
 
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
