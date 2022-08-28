import 'package:ecommerc/Core/Constant/theme.dart';
import 'package:ecommerc/Core/Localization/changelocal.dart';
import 'package:ecommerc/Core/Localization/translation.dart';
import 'package:ecommerc/Core/services/services.dart';
import 'package:ecommerc/View/Screen/Language.dart';
import 'package:ecommerc/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Loclacontroller controller = Get.put(Loclacontroller());
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      translations: MyTranslation(),
      theme: controller.appTheme,
      home: const Language(),
      routes: routes,
    );
  }
}


