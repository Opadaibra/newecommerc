// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';

import 'package:get/get.dart';

abstract class SuccesssresetController extends GetxController {
  gotologin();
}

class SuccesssresetControllerImp extends SuccesssresetController {
  @override
  gotologin() {
    Get.offAllNamed(AppRout.login);
  }
}
