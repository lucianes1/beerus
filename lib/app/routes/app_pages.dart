import 'package:beerus/modules/home/home_binding.dart';
import 'package:beerus/modules/home/home_page.dart';
import 'package:beerus/modules/on_boarding/introduction/introduction_binding.dart';
import 'package:beerus/modules/on_boarding/introduction/introduction_page.dart';
import 'package:beerus/modules/on_boarding/splash/splash_binding.dart';
import 'package:beerus/modules/on_boarding/splash/splash_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.INTRODUCTION,
      page: () => IntroductionPage(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
