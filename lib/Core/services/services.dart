import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServecices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServecices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initalservices() async {
  await Get.putAsync(() => MyServecices().init());
}
