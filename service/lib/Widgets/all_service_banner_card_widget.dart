// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:service/Const/all_styles.dart';

class AllServiceBannerCardWidget extends StatelessWidget {
  String image;
  String title;
  VoidCallback onTap;

  AllServiceBannerCardWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: SizedBox(
          height: 100.0,
          child: Row(
            children: [
              SizedBox(
                height: 100.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(image, width: 105.0, fit: BoxFit.fill),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Text(
                  title,
                  style: AllStyles.titleBlackNormalTextStyle,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
