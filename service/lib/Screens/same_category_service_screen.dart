// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Controllers/same_category_service_screen_controller.dart';
import 'package:service/Models/same_category_service_model.dart';
import 'package:service/Widgets/custom_app_bar.dart';
import 'package:service/Widgets/same_category_service_card_widget.dart';
import 'package:service/routes.dart';

class SameCategoryServiceScreen extends StatelessWidget {
  SameCategoryServiceScreenController sameCategoryServiceScreenController =
      Get.put(SameCategoryServiceScreenController());

  SameCategoryServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        icon: Icons.arrow_back,
        title: "Residential Cleaning Service",
        onTap: () {
          Get.back();
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: GetBuilder<SameCategoryServiceScreenController>(
          builder: (_) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount:
                    sameCategoryServiceScreenController.servicesList.length,
                itemBuilder: (context, index) {
                  SameCategoryServiceModel data =
                      sameCategoryServiceScreenController.servicesList[index];
                  return SameCategoryServiceCardWidget(
                    image: data.image,
                    title: data.title,
                    subtitle: data.subtitle,
                    price: data.price,
                    description: data.description,
                    detailsTap: () {
                      Get.toNamed(serviceDetailsScreen);
                    },
                    nextTap: () {
                      Get.toNamed(checkoutScreen);
                    },
                  );
                });
          },
        ),
      ),
    );
  }
}
