import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget {
  final String name;
  final double width;
  final Function()? onTap;

  ButtonRounded({
    required this.name,
    this.width = 300,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.amber),
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 90),
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('${name}')],
        ),
      ),
    );
  }
}
