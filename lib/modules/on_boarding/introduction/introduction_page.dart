import 'package:beerus/app/global/widgets/button_rounded.dart';
import 'package:beerus/app/global/widgets/logo.dart';
import 'package:beerus/modules/on_boarding/introduction/introduction_controller.dart';
import 'package:beerus/modules/on_boarding/introduction/widgets/page_view_custom.dart';
import 'package:beerus/modules/on_boarding/introduction/widgets/slide_dots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroductionPage extends GetView<IntroductionController> {
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
        child: Column(
          children: [
            Container(
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < controller.list.length; i++)
                      if (i == controller.currentPage.value)
                        SlideDots(true)
                      else
                        SlideDots(false)
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                itemCount: controller.list.length,
                itemBuilder: (context, index) {
                  var item = controller.list[index];
                  return PageViewCustom(
                    title: item.title,
                    description: item.description,
                    image: Image.asset(
                      item.assetImage,
                      width: Get.width * 0.8,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: InkWell(
          onTap: controller.onButtonClick,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonRounded(
                name: 'Proximo',
                onTap: () => controller.onButtonClick(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
