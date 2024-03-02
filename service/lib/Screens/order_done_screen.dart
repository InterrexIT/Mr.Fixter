import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Widgets/custom_button_widget.dart';
import 'package:service/routes.dart';

class OrderDoneScreen extends StatefulWidget {
  const OrderDoneScreen({Key? key}) : super(key: key);

  @override
  State<OrderDoneScreen> createState() => _OrderDoneScreenState();
}

class _OrderDoneScreenState extends State<OrderDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
      child: Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("Assets/images/done.png",
                  height: 100.0, width: 100.0),
              const SizedBox(height: 16.0),
              Text(
                'order_success'.tr,
                style: AllStyles.titleBlackNormalTextStyle,
              )
            ],
          )),
          SizedBox(
            height: 35.0,
            child: CustomButton(
                title: 'order_done_button'.tr,
                onTap: () {
                  Get.offAndToNamed(bottomNavBarScreen);
                }),
          ),
        ],
      ),
    ));
  }
}
