// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordControllre extends GetxController {
  checkcode();
  gotosuccess();
}

class ResetPasswordControllreImp extends ResetPasswordControllre {
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isshowpassowrd = true;
  IconData isshowpassowrdicon = Icons.visibility_off;

  showpassword() {
    isshowpassowrd = isshowpassowrd == true ? false : true;
     update();
  }

  showpasswordicon() {
    isshowpassowrdicon = isshowpassowrdicon == Icons.visibility_off ? Icons.visibility : Icons.visibility_off;
     update();
  }
  @override
  checkcode() {}

  @override
  gotosuccess() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      print("valid data");
      Get.toNamed(AppRout.success);
    } else {
      print("not valid data");
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
