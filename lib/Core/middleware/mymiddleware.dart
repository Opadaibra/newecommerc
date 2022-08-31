import 'package:ecommerc/Core/services/services.dart';
import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Mymiddleware extends GetMiddleware {
  int? get priority => 1;

  MyServecices myServecices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServecices.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRout.login);
    }
  }
}
