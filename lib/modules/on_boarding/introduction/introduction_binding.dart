import 'package:beerus/modules/on_boarding/introduction/introduction_controller.dart';
import 'package:get/get.dart';

class IntroductionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionController>(() => IntroductionController());
  }
}
