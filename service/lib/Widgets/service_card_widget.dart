// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:service/Const/all_colors.dart';

class ServiceCardWidget extends StatelessWidget {
  String image;
  String label;
  VoidCallback onTap;

  ServiceCardWidget(
      {super.key,
      required this.image,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 160.0,
        width: 160.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: AllColors.whiteColor),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(label),
                )),
            Image.asset(
              image,
              height: 100.0,
              width: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
