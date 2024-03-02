// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Controllers/all_services_controller.dart';
import 'package:service/Widgets/all_service_banner_card_widget.dart';
import 'package:service/Widgets/custom_app_bar.dart';
import 'package:service/routes.dart';

class AllServicesScreen extends StatelessWidget {
  AllServicesController allServicesController =
      Get.put(AllServicesController());

  AllServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        icon: Icons.arrow_back,
        title: 'all_service'.tr,
        onTap: () {
          Get.back();
        },
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: 110.0,
            child: sideListView(context),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: surfaceServiceListView(context),
          ))
        ],
      ),
    );
  }

  Widget sideListView(BuildContext context) {
    return GetBuilder<AllServicesController>(builder: (_) {
      return SizedBox(
        width: 100.0,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: allServicesController.allServicesList.length,
            itemBuilder: (context, index) {
              String title =
                  allServicesController.allServicesList[index]['title'];
              String image =
                  allServicesController.allServicesList[index]['image'];

              return InkWell(
                onTap: () {
                  allServicesController.updateTapIndex(index);
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: allServicesController.initialTapIndex == index
                      ? Colors.transparent
                      : AllColors.whiteColor,
                  width: 100.0,
                  height: 105.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(image, height: 65, width: 65.0),
                      const SizedBox(height: 2.0),
                      Text(
                        title,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              );
            }),
      );
    });
  }

  Widget surfaceServiceListView(BuildContext context) {
    return GetBuilder<AllServicesController>(builder: (_) {
      return ListView.builder(
          shrinkWrap: true,
          itemCount: allServicesController
              .allServicesList[allServicesController.initialTapIndex]['service']
              .length,
          itemBuilder: (context, index) {
            String image = allServicesController
                .allServicesList[allServicesController.initialTapIndex]
                    ['service'][index]
                .image;
            String title = allServicesController
                .allServicesList[allServicesController.initialTapIndex]
                    ['service'][index]
                .label;
            return AllServiceBannerCardWidget(
                image: image,
                title: title,
                onTap: () {
                  Get.toNamed(sameCategoryServiceScreen);
                });
          });
    });
  }
}
