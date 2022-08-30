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

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  checkemail() {}

  @override
  gotoverifycode() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      print("valid data");
      Get.toNamed(AppRout.verifycode);
    } else {
      print("not valid data");
    }
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
