// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signup();
  gotosignin();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isshowpassword = true;
 IconData isshowpassowrdicon = Icons.visibility;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  showpasswordicon() {
    isshowpassowrdicon = isshowpassowrdicon == Icons.visibility_off ? Icons.visibility : Icons.visibility_off;
     update();
  }
  @override
  signup() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRout.verifycodesignup);

      print(" valid data");
    } else {
      print("not valid data");
    }
  }

  @override
  gotosignin() {
    Get.offNamed(AppRout.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}
