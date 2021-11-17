import 'package:beerus/app/global/widgets/logo.dart';
import 'package:beerus/app/global/widgets/text_field.dart';
import 'package:beerus/modules/auth/sign_in/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Logo(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 1.20,
                ),
              ),
            ),
            TextFieldDelivery(),
            SizedBox(height: 15),
            TextFieldDelivery(),
          ],
        ),
      ),
    );
  }
}
