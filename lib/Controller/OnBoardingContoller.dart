// ignore_for_file: file_names
import 'package:ecommerc/data/datasource/static/Approut.dart';
import 'package:ecommerc/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onpagechagned(int index);
  changetext();
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentpage = 0;
  late PageController pageController;
  String text = "Continue";
  @override
  next() {
    currentpage++;
    if (currentpage > onBoardinglist.length - 1) {
      Get.offAllNamed(AppRout.login);
    }

// else{
    pageController.animateToPage(currentpage,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
//   }
  }

  @override
  onpagechagned(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  changetext() {
    if (currentpage == 3) {
      text = "Let's Start";
    }
    update();
  }
}
