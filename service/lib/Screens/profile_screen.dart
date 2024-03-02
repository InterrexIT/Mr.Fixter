// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Controllers/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileController profileController = Get.put(ProfileController());

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20.0, top: 80.0, right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('personal_information'.tr,
                    style: AllStyles.headingBlackTextStyle),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 5.0, right: 5.0, top: 1.0, bottom: 1.0),
                    decoration: BoxDecoration(
                        color: AllColors.buttonColor,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: AllColors.whiteColor,
                          size: 18.0,
                        ),
                        SizedBox(width: 2.0),
                        Text('Edit',
                            style: AllStyles.titleWhiteNormalTextStyle),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30.0),

            // Personal Information View Here

            personalInformation(),
            const SizedBox(height: 30.0),

            Align(
                alignment: Alignment.centerLeft,
                child:
                    Text('setting'.tr, style: AllStyles.headingBlackTextStyle)),
            const SizedBox(height: 20.0),
            //Select Language View

            selectLanguageView()
          ],
        ),
      ),
    );
  }

  Widget personalInformation() {
    return GetBuilder<ProfileController>(builder: (_) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: AllColors.whiteColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Text(
                      "name".tr,
                      style: AllStyles.titleBlackBoldTextStyle,
                    )),
                Expanded(
                    flex: 6,
                    child: Text(
                      profileController.name,
                      style: AllStyles.titleBlackNormalTextStyle,
                    )),
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Text(
                      "username".tr,
                      style: AllStyles.titleBlackBoldTextStyle,
                    )),
                Expanded(
                    flex: 6,
                    child: Text(
                      profileController.username,
                      style: AllStyles.titleBlackNormalTextStyle,
                    )),
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Text(
                      "email".tr,
                      style: AllStyles.titleBlackBoldTextStyle,
                    )),
                Expanded(
                    flex: 6,
                    child: Text(
                      profileController.email,
                      style: AllStyles.titleBlackNormalTextStyle,
                    )),
              ],
            )
          ],
        ),
      );
    });
  }

  Widget selectLanguageView() {
    return GetBuilder<ProfileController>(builder: (_) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: AllColors.whiteColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('select_language'.tr,
                style: AllStyles.titleBlackBoldTextStyle),
            const SizedBox(height: 16.0),
            ListTile(
              minLeadingWidth: 10.0,
              leading: Radio(
                value: 0,
                groupValue: profileController.groupValue,
                activeColor: AllColors.buttonColor,
                onChanged: (value) {
                  profileController.updateGroupValue(value as int);
                  profileController.changeLanguage(LanguageType.ENGLISH);
                },
              ),
              title: Text(
                'english'.tr,
                style: AllStyles.titleBlackBoldTextStyle,
              ),
            ),
            ListTile(
              minLeadingWidth: 10.0,
              leading: Radio(
                value: 1,
                groupValue: profileController.groupValue,
                activeColor: AllColors.buttonColor,
                onChanged: (value) {
                  profileController.updateGroupValue(value as int);
                  profileController.changeLanguage(LanguageType.BANGLA);
                },
              ),
              title: Text(
                'bangla'.tr,
                style: AllStyles.titleBlackBoldTextStyle,
              ),
            )
          ],
        ),
      );
    });
  }
}
