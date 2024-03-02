// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Controllers/checkout_controller.dart';
import 'package:service/Models/checkout_model.dart';
import 'package:service/Widgets/checkout_card_widget.dart';
import 'package:service/Widgets/custom_app_bar.dart';
import 'package:service/Widgets/custom_button_widget.dart';
import 'package:service/routes.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutController checkoutController = Get.put(CheckoutController());

  CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        icon: Icons.arrow_back,
        title: "Full House Cleaning",
        onTap: () {
          Get.back();
        },
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
        child: Column(
          children: [
            Expanded(
              child: GetBuilder<CheckoutController>(builder: (_) {
                return ListView.builder(
                  shrinkWrap: true,
                    itemCount: checkoutController.itemsList.length,
                    itemBuilder: (context, index) {
                      CheckoutModel data = checkoutController.itemsList[index];
                      return CheckoutCardWidget(
                          image: data.image,
                          title: data.title,
                          price: data.price,
                          quantity: data.quantity,
                          onTap: () {},
                          increaseTap: () {
                            checkoutController.incrementQuantity(index);
                          },
                          decreaseTap: () {
                            checkoutController.decrementQuantity(index);

                          });
                    });
              }),
            ),

            SizedBox(
              height: 35.0,
              child: CustomButton(
                title: "checkout".tr,
                onTap: (){
                  Get.toNamed(calenderScreen);
                },
              ),

            )


          ],
        ),
      ),
    );
  }
}
