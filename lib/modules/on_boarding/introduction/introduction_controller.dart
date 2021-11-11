import 'package:beerus/app/routes/app_pages.dart';
import 'package:beerus/modules/on_boarding/introduction/models/slide_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroductionController extends GetxController {
  PageController pageController = PageController(initialPage: 0);
  RxInt currentPage = 0.obs;

  List<SlideModel> list = [
    SlideModel(
      title: 'Compre sua cerveja sem sair de casa',
      description:
          'Encontre as mais diversas marcas de\ncervejas pilzens premium, puro malte\ne cervejas especiais.',
      assetImage: 'assets/images/cooffe.jpg',
    ),
    SlideModel(
      title: 'Compre sua cerveja sem sair de casa',
      description:
          'Encontre as mais diversas marcas de\ncervejas pilzens premium, puro malte\ne cervejas especiais.',
      assetImage: 'assets/images/cooffe.jpg',
    ),
    SlideModel(
      title: 'Compre sua cerveja sem sair de casa',
      description:
          'Encontre as mais diversas marcas de\ncervejas pilzens premium, puro malte\ne cervejas especiais.',
      assetImage: 'assets/images/cooffe.jpg',
    ),
  ];

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    pageController.dispose();
  }

  onPageChanged(int index) {
    currentPage.value = index;
  }

  void onButtonClick() {
    if (pageController.page!.toInt() < list.length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }
}
