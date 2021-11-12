import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewCustom extends Container {
  final String title;
  final String description;
  final Image image;

  PageViewCustom(
      {required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: Get.width * 0.9,
          child: Text(
            description,
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
