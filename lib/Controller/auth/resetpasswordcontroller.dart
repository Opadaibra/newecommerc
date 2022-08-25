// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordControllre extends GetxController {
  checkcode();
  gotosuccess();
}

class ResetPasswordControllreImp extends ResetPasswordControllre {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  checkcode() {}

  @override
  gotosuccess() {
    Get.toNamed(AppRout.success);
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
