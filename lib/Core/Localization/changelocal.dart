import 'package:ecommerc/Core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Loclacontroller extends GetxController {
  Locale? language;
  MyServecices myServecices = Get.find();

  changlang(String codelang) {
    Locale locale = Locale(codelang);
    myServecices.sharedPreferences.setString("lang", codelang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedpreflang = myServecices.sharedPreferences.getString("lang");
    if (sharedpreflang == "ar") {
      language = const Locale("ar");
    } else if (sharedpreflang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
