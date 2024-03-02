// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Controllers/order_management_controller.dart';
import 'package:service/Models/ongoing_service_model.dart';
import 'package:service/Widgets/ongoing_service_card_widget.dart';
import 'package:service/routes.dart';

class ServiceHistoryScreen extends StatelessWidget {
  OrderManagementController orderManagementController =
      Get.find<OrderManagementController>();

  ServiceHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: orderManagementController.ongoingOrders.length,
        itemBuilder: (context, index) {
          OngoingServiceModel data =
              orderManagementController.ongoingOrders[index];
          return OngoingServiceCardWidget(
              title: data.title,
              image: data.image,
              price: data.price,
              date: data.date,
              jobTitle: data.jobTitle,
              name: data.name,
              onTap: () {
                Get.toNamed(orderDetailsScreen);
              });
        });
  }
}
