import 'dart:async';

import 'package:beerus/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    onLoading();
  }

  void onLoading() {
    Timer(Duration(seconds: 3), () {
      Get.offNamed(Routes.INTRODUCTION);
    });
  }
}
