// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Const/all_texts.dart';

class OngoingServiceCardWidget extends StatelessWidget {
  String title;
  String image;
  String price;
  String date;
  String jobTitle;
  String name;
  VoidCallback onTap;

  OngoingServiceCardWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      required this.date,
      required this.jobTitle,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AllStyles.titleBlackBoldTextStyle),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: AllColors.grayColor,
                                radius: 11.0,
                                child: Icon(
                                  Icons.calendar_today,
                                  size: 11.0,
                                  color: AllColors.whiteColor,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                date,
                                style: AllStyles.subtitleBlackBoldTextStyle,
                              )
                            ],
                          ),
                          const SizedBox(height: 6.0),
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: AllColors.grayColor,
                                radius: 11.0,
                                child: Icon(
                                  Icons.card_travel,
                                  size: 11.0,
                                  color: AllColors.whiteColor,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                jobTitle,
                                style: AllStyles.subtitleBlackBoldTextStyle,
                              )
                            ],
                          ),
                          const SizedBox(height: 6.0),
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: AllColors.grayColor,
                                radius: 11.0,
                                child: Icon(
                                  Icons.person,
                                  size: 11.0,
                                  color: AllColors.whiteColor,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                name,
                                style: AllStyles.subtitleBlackBoldTextStyle,
                              )
                            ],
                          )
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text("${AllTexts.currency}${price.toString()}",
                              style: AllStyles.titleBlackBoldTextStyle),
                          const SizedBox(height: 4.0),
                          Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                border: Border.all(
                                  color: AllColors
                                      .grayColor, // red as border color
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset(
                                  image,
                                  fit: BoxFit.fill,
                                ),
                              ))
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
