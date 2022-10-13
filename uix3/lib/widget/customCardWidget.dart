import 'package:flutter/material.dart';
import 'package:uix3/const/AppSize.dart';
import 'package:uix3/const/AppText.dart';
import 'package:uix3/customTextWidget.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    required this.cardImage,
    required this.cardScale,
    required this.cardImageColor,
    Key? key,
  }) : super(key: key);
  final String cardImage;
  final double cardScale;
  final Color cardImageColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.infinity,
        child: Card(
            child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
              color: Colors.grey.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    cardImage,
                    scale: cardScale,
                    color: cardImageColor,
                  )
                ],
              ),
            ),
            const Expanded(
              child: ListTile(
                subtitle: CustomText(
                    text: AppText.learnDesignText,
                    fontSize: AppSize.learnDesignText,
                    fontWeigth: FontWeight.bold),
                title: CustomText(
                    text: AppText.uxUiText,
                    fontSize: AppSize.uxUiText,
                    fontWeigth: FontWeight.bold),
              ),
            ),
            const VerticalDivider(
              width: 50,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.alarm))
          ],
        )));
  }
}
