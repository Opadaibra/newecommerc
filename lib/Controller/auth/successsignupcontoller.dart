// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';

import 'package:get/get.dart';

abstract class SuccesssignupController extends GetxController {

  gotologin();
}

class SuccesssignupcontollerImp extends SuccesssignupController {


  @override
  gotologin() {
    Get.offAllNamed(AppRout.login);
  }
}
