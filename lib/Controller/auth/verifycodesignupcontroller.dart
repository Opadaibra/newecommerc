// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:get/get.dart';

abstract class VerifycodesignupControllre extends GetxController {
  checkcode();
  gotosuccesssignup();
}

class VerifycodesignupControllreImp extends VerifycodesignupControllre {
  late String code;

  @override
  checkcode() {}

  @override
  gotosuccesssignup() {
    Get.toNamed(AppRout.successsignup);
  }
}
