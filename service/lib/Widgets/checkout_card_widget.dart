// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Const/all_texts.dart';

class CheckoutCardWidget extends StatelessWidget {
  String image;
  String title;
  String price;
  int quantity;

  CheckoutCardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.quantity,
      required this.onTap,
      required this.increaseTap,
      required this.decreaseTap});

  VoidCallback onTap;
  VoidCallback increaseTap;
  VoidCallback decreaseTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: SizedBox(
        height: 100.0,
        child: Row(
          children: [
            SizedBox(
              width: 110.0,
              height: 100.0,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title, style: AllStyles.headingBlackTextStyle),
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(
                            "${AllTexts.currency} ${price.toString()}",
                            style: AllStyles.headingRedTextStyle,
                          )),
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: decreaseTap,
                              child: Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: AllColors.buttonColor),
                                child: const Icon(
                                  Icons.remove,
                                  size: 16.0,
                                  color: AllColors.whiteColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 6.0, right: 6.0),
                              child: Text(
                                quantity.toString(),
                                style: AllStyles.titleBlackBoldTextStyle,
                              ),
                            ),
                            InkWell(
                              onTap: increaseTap,
                              child: Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: AllColors.buttonColor),
                                child: const Icon(
                                  Icons.add,
                                  size: 16.0,
                                  color: AllColors.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
