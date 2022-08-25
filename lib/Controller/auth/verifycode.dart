// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:get/get.dart';

abstract class VerifycodeControllre extends GetxController {
  checkcode();
  gotoresetpassword();
}

class VerifycodeControllreImp extends VerifycodeControllre {
  late String code;

  @override
  checkcode() {}

  @override
  gotoresetpassword() {
    Get.toNamed(AppRout.resetpassword);
  }



}
