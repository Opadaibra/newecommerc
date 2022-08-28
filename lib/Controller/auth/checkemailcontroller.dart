// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CheckemailController extends GetxController {
  checkemail();
  gotoverifycodesignup();
}

class CheckemailControllerImp extends CheckemailController {
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  gotoverifycodesignup() {
    Get.toNamed(AppRout.verifycodesignup);
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
