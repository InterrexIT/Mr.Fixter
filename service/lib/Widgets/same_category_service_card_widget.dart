// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Const/all_texts.dart';

class SameCategoryServiceCardWidget extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  String price;
  String description;
  VoidCallback detailsTap;
  VoidCallback nextTap;

  SameCategoryServiceCardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.description,
      required this.detailsTap,
      required this.nextTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: SizedBox(
        height: 158.0,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Image.asset(
              image,
              height: 158,
              width: 120,
              fit: BoxFit.fill,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 10.0, right: 10.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title, style: AllStyles.headingBlackTextStyle),
                  const SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("price_start".tr,
                          style: AllStyles.subtitleBlackBoldTextStyle),
                      const SizedBox(width: 4.0),
                      Text("${AllTexts.currency}${price.toString()}",
                          style: AllStyles.subtitleRedBoldTextStyle),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.radio_button_on_sharp,
                        color: AllColors.grayColor,
                        size: 16.0,
                      ),
                      const SizedBox(width: 3.0),
                      Text(subtitle,
                          style: AllStyles.subtitleBlackBoldTextStyle),
                    ],
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 2.0),
                      child: Text(
                        description,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      InkWell(
                        onTap: detailsTap,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 6.0, bottom: 6.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: AllColors.grayColor),
                          child: Text(
                            'details'.tr,
                            style: AllStyles.subtitleBlackBoldTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      InkWell(
                        onTap: nextTap,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 6.0, bottom: 6.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: AllColors.buttonColor),
                          child: Text(
                            'next'.tr,
                            style: AllStyles.subtitleWhiteBoldTextStyle,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
