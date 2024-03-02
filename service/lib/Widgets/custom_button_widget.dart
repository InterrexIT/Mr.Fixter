// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';

class CustomButton extends StatelessWidget {
  String title;
  VoidCallback onTap;

  CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: AllColors.blackColor,
        ),
        child: Center(
            child: Text(
          title,
          style: AllStyles.titleWhiteBoldTextStyle,
        )),
      ),
    );
  }
}
