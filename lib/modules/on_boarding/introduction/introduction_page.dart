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
        title: Image.asset(
          'assets/images/cooffe.jpg',
          width: 100,
        ),
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
                    image: Image.asset(item.assetImage),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: controller.onButtonClick,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 186,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, blurRadius: 4, offset: Offset(0, 4)),
                ],
                color: Colors.amber,
              ),
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  'Proximo',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
