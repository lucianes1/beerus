import 'package:beerus/app/routes/app_pages.dart';
import 'package:beerus/modules/on_boarding/splash/splash_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.SPLASH,
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
