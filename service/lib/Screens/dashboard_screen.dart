// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Controllers/dashboard_controller.dart';
import 'package:service/Models/service_model.dart';
import 'package:service/Widgets/service_banner_card_widget.dart';
import 'package:service/Widgets/service_card_widget.dart';
import 'package:service/routes.dart';

class DashboardScreen extends StatelessWidget {
  DashboardController dashboardController = Get.put(DashboardController());

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 35.0),
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              color: AllColors.whiteColor,
              child: Column(
                children: [
                  ListTile(
                    // ignore: prefer_const_constructors
                    leading: Icon(
                      Icons.location_on,
                      color: AllColors.blackColor,
                      size: 30.0,
                    ),
                    title: Text('work_title'.tr,
                        style: AllStyles.headingBlackTextStyle),
                    minLeadingWidth: 20.0,
                    isThreeLine: true,
                    subtitle: const Text(
                      '41 Kemal Ataturk Avenue, Banani, Dhak...',
                      style: AllStyles.subtitleBlackNormalTextStyle,
                    ),
                  ),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: AllColors.grayColor, // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon:
                            const Icon(Icons.search, color: AllColors.grayColor),
                        hintText: 'search_title'.tr,
                        //contentPadding: EdgeInsets.only(top: 15.0)
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: [
                topServiceListView(),
                carouselSliderView(),
                serviceListView(context)
              ],
            ))),
          ],
        ),
      ),
    );
  }

  Widget topServiceListView() {
    return SizedBox(
      height: 280.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Top Services',
              style: AllStyles.headingBlackTextStyle,
            ),
          ),
          const SizedBox(height: 10.0),
          GetBuilder<DashboardController>(builder: (_) {
            return SizedBox(
              height: 160.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: dashboardController.topServices.length,
                  itemBuilder: (context, index) {
                    ServiceModel data = dashboardController.topServices[index];
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                      child: ServiceCardWidget(
                          image: data.image,
                          label: data.label,
                          onTap: () {
                            Get.toNamed(sameCategoryServiceScreen);
                          }),
                    );
                  }),
            );
          }),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      Get.toNamed(allServicesScreen);
                    },
                    child: Text(
                      'see_all_service_title'.tr,
                      style: AllStyles.titleBlackNormalTextStyle,
                    )),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget carouselSliderView() {
    return Container(
      color: AllColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Text(
              'Offers',
              style: AllStyles.headingBlackTextStyle,
            ),
          ),
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage('Assets/images/offer1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage('Assets/images/offer1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage('Assets/images/offer1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage('Assets/images/offer1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage('Assets/images/offer1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }

  Widget serviceListView(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (_) {
      return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: dashboardController.servicesList.length,
          itemBuilder: (context, rootIndex) {
            return Container(
              color: rootIndex % 2 == 1
                  ? AllColors.whiteColor
                  : Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rootIndex != 0 ? const SizedBox(height: 30.0) : const SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: Text(
                        dashboardController.servicesList[rootIndex]['title'],
                        style: AllStyles.headingBlackTextStyle),
                  ),
                  SizedBox(
                    height: 140.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dashboardController
                            .servicesList[rootIndex]['service'].length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: ServiceBannerCardWidget(
                              image: dashboardController
                                  .servicesList[rootIndex]['service'][index]
                                  .image,
                              label: dashboardController
                                  .servicesList[rootIndex]['service'][index]
                                  .label,
                              onTap: () {},
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            );
          });
    });
  }
}
