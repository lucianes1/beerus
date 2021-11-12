import 'package:beerus/app/global/widgets/button_rounded.dart';
import 'package:beerus/app/global/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(
              width: Get.width * 0.8,
            ),
            SizedBox(
              height: Get.width * 0.3,
            ),
            ButtonRounded(
              name: 'ENTRAR',
              onTap: () => controller.onClickButtonSignIn(),
            ),
            ButtonRounded(
              name: 'REGISTRAR',
              onTap: () => controller.onClickButtonSignUp(),
            ),
          ],
        ),
      ),
    );
  }
}
