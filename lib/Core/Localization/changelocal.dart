import 'package:ecommerc/Core/Constant/theme.dart';
import 'package:ecommerc/Core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loclacontroller extends GetxController {
  Locale? language;
  MyServecices myServecices = Get.find();
  ThemeData appTheme = themeEnglish;

  changlang(String codelang) {
    Locale locale = Locale(codelang);
    appTheme = codelang == "ar" ? themeArabic : themeEnglish;
    myServecices.sharedPreferences.setString("lang", codelang);
    Get.updateLocale(locale);
    Get.changeTheme(appTheme);
  }

  @override
  void onInit() {
    String? sharedpreflang = myServecices.sharedPreferences.getString("lang");
    if (sharedpreflang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedpreflang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
