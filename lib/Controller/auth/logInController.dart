// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LogInController extends GetxController {
  login();
  gotosignup();
  gotoforgetpassword();
}

class LogInControllerImp extends LogInController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  login() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      print("valid data");
    } else {
      print("not valid data");
    }
  }

  @override
  gotosignup() {
    Get.offNamed(AppRout.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotoforgetpassword() {
    Get.toNamed(AppRout.forgetpassword);
  }
}
