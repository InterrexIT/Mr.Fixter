// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';

class ServiceBannerCardWidget extends StatelessWidget {
  String image;
  String label;
  VoidCallback onTap;

  ServiceBannerCardWidget(
      {super.key,
      required this.image,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220.0,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            image: DecorationImage(
              image: AssetImage(image),
            )),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 22.0,
              width: 120.0,
              decoration: const BoxDecoration(color: AllColors.labelBgColor),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(
                    label,
                    style: AllStyles.subtitleWhiteNormalTextStyle,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            )));
  }
}
