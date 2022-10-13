import 'package:flutter/material.dart';

import 'const/AppSize.dart';

class CustomCatagoriesWidget extends StatelessWidget {
  const CustomCatagoriesWidget({
    Key? key,
    required this.boxColor,
    required this.boxImage,
    required this.iconScale,
    required this.boxText,
  }) : super(key: key);
  final Color boxColor;
  final String boxImage;
  final double iconScale;
  final String boxText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: boxColor, borderRadius: AppSize.boxDecoration),
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width * 0.24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            boxImage,
            color: Colors.white,
            scale: iconScale,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            boxText,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
