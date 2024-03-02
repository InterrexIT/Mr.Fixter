// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Controllers/order_management_controller.dart';
import 'package:service/Screens/ongoing_service_screen.dart';
import 'package:service/Screens/service_history_screen.dart';

class OrderManagementScreen extends StatelessWidget {
  OrderManagementController orderManagementController =
      Get.put(OrderManagementController());

  OrderManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AllColors.whiteColor,
          elevation: 3.0,
          title: Text(
            'order'.tr,
            style: AllStyles.headingBlackTextStyle,
          ),
          bottom: TabBar(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.5),
            controller: orderManagementController.tabController,
            onTap: (value) {
              orderManagementController.tabController!.addListener(() {
                // categoriesController.tabIndex =
                //     categoriesController.tabController.index;
              });
            },
            isScrollable: false,
            indicatorColor: AllColors.blackColor,
            labelColor: AllColors.blackColor,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [Tab(text: 'ongoing'.tr), Tab(text: 'history'.tr)],
          ),
        ),
        body: TabBarView(
          controller: orderManagementController.tabController,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: OngoingServiceScreen(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: ServiceHistoryScreen(),
            )
          ],
        ),
      ),
    );
  }
}
