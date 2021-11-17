import 'package:flutter/material.dart';

class TextFieldDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: TextFormField(
        validator: (str) {
          return null;
        },
        decoration: InputDecoration(
          hintText: 'e-mail',
          hintStyle: TextStyle(
            color: Colors.red,
            fontSize: 18,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
