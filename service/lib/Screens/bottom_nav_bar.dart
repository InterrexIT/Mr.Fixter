

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Screens/dashboard_screen.dart';
import 'package:service/Screens/order_management_screen.dart';
import 'package:service/Screens/profile_screen.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int index=0;
  List<Widget> pages= [DashboardScreen(),OrderManagementScreen(),ProfileScreen()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(icon: const Icon(Icons.home),label: 'home'.tr),
          BottomNavigationBarItem(icon: const Icon(Icons.description),label: 'order'.tr),
          BottomNavigationBarItem(icon: const Icon(Icons.person),label: 'profile'.tr),
        ],
        currentIndex: index,
        selectedItemColor: AllColors.buttonColor,
        unselectedItemColor: AllColors.grayColor,
        selectedLabelStyle: const TextStyle(color: AllColors.buttonColor),
        unselectedLabelStyle:const TextStyle(color: AllColors.grayColor) ,
        onTap: (value){
          
          setState(() {
            index=value;
          });
        },
      ),
      body: pages.elementAt(index),
    );
  }
}
