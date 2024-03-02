// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:service/Const/all_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize =>
      const Size.fromHeight(56.0); // Adjust the height as needed

  IconData icon;
  String title;
  VoidCallback onTap;

  MyAppBar(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: AllColors.blackColor)),
      backgroundColor:
          AllColors.whiteColor, // Set your desired background color
      leading: InkWell(
          onTap: onTap,
          child: Icon(
            icon,
            color: AllColors.buttonColor,
          )),
    );
  }
}
