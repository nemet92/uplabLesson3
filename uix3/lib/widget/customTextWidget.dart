import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeigth,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final FontWeight fontWeigth;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeigth),
    );
  }
}
