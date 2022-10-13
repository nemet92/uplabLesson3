import 'package:flutter/material.dart';
import 'package:uix3/const/AppPath.dart';
import 'package:uix3/const/AppColor.dart';
import 'package:uix3/const/AppSize.dart';
import 'package:uix3/const/AppText.dart';
import 'package:uix3/customCardWidget.dart';
import 'package:uix3/customTextWidget.dart';

import 'customContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, AppSize.preferredSize),
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColor.appBarColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: AppSize.appbarRadiusLeft,
                      bottomRight: AppSize.appbarRadiusRight)),
              width: double.infinity,
              child: Padding(
                padding: AppSize.appBarSize,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: AppPath.appMenuIcon,
                          color: AppColor.appBarIconMenu,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(AppPath.appBarImage),
                        )
                      ],
                    ),
                    const CustomText(
                      text: AppText.appBartText,
                      fontSize: AppSize.appBarTextFontSize,
                      fontWeigth: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: AppText.hintText,
                        suffixIcon: AppPath.suffixIcon,
                        suffixIconColor: Colors.white,
                        disabledBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: AppSize.columPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppText.catagoriesText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.appBarTextFontSize),
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      CustomCatagoriesWidget(
                        boxColor: AppColor.designBoxColor,
                        boxImage: AppPath.boxImage,
                        iconScale: AppSize.iconScaleDesign,
                        boxText: AppText.designText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomCatagoriesWidget(
                        boxColor: AppColor.codingBoxColor,
                        boxImage: AppPath.boxCoding,
                        iconScale: AppSize.iconScaleCoding,
                        boxText: AppText.codingText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomCatagoriesWidget(
                        boxColor: AppColor.marketingBoxColor,
                        boxImage: AppPath.boxMarketing,
                        iconScale: AppSize.iconScaleMarketing,
                        boxText: AppText.marketingText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomCatagoriesWidget(
                        boxColor: AppColor.securityBoxColor,
                        boxImage: AppPath.boxSecurity,
                        iconScale: AppSize.iconScaleSecurity,
                        boxText: AppText.sexurityText,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomText(
                    text: AppText.catagoriesPopuler,
                    fontSize: AppSize.appBarTextFontSize,
                    fontWeigth: FontWeight.bold),
                const SizedBox(
                  height: 15,
                ),
                const CustomCardWidget(
                  cardImage: AppPath.boxCoding,
                  cardImageColor: AppColor.codingBoxColor,
                  cardScale: AppSize.iconScaleCoding,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomCardWidget(
                  cardImage: AppPath.boxMarketing,
                  cardImageColor: AppColor.marketingBoxColor,
                  cardScale: AppSize.iconScaleMarketing,
                )
              ],
            ),
          ),
        ));
  }
}
