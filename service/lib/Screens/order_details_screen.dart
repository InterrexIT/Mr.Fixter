import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Const/all_texts.dart';
import 'package:service/Widgets/custom_app_bar.dart';
import 'package:service/Widgets/custom_button_widget.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {

  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Order has been placed with Awesome Cleaners",

        ),
        iconWidget: Container(
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Center(child: Icon(Icons.arrow_drop_down, color: Colors.white)),
        )),
    StepperData(
        title: StepperText("Order has been confirmed"),
        iconWidget:Container(
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Center(child: Icon(Icons.arrow_drop_down, color: Colors.white)),
        )),
    StepperData(
        title: StepperText("An expert has been assigned to your order"),
        iconWidget: Container(
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Center(child: Icon(Icons.arrow_drop_down, color: Colors.white)),
        )),

    StepperData(
        title: StepperText("Your order is completed and on its way"),
        iconWidget: Container(
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Center(child: Icon(Icons.arrow_drop_down, color: Colors.white)),
        )),
    StepperData(
      title: StepperText("Delivered",
          textStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16.0
          )),
        iconWidget: Container(
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Center(child: Icon(Icons.arrow_drop_down, color: Colors.white)),
        )
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        icon: Icons.arrow_back_ios,
        title: "order_details".tr,
        onTap: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: AllColors.whiteColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Home Cleaning",
                          style: AllStyles.titleBlackBoldTextStyle,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AllColors.backgroundColor,
                              borderRadius: BorderRadius.circular(6.0)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Processing'),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${AllTexts.currency} 5000"),
                        Text("HC-8745")
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Text("timeline".tr,style: AllStyles.headingBlackTextStyle),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: AllColors.whiteColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: AnotherStepper(
                  verticalGap: 16.0,
                  stepperList: stepperData,
                  stepperDirection: Axis.vertical,
                  iconWidth: 23, // Height that will be applied to all the stepper icons
                  iconHeight: 23, // Width that will be applied to all the stepper icons
                ),
              ),
              const SizedBox(height: 15.0),
              Text("schedule_contact_info".tr,style: AllStyles.titleBlackBoldTextStyle),
              const SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                    color: AllColors.whiteColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(children: [
                        Icon(Icons.calendar_today,size: 20.0),
                        SizedBox(width: 8.0),
                        Text("Sunday, 26th November - 11 AM",softWrap: true,overflow: TextOverflow.ellipsis,style: AllStyles.titleBlackNormalTextStyle,)
                      ],),
                      SizedBox(height: 10.0),

                      Row(children: [
                        Icon(Icons.person,size: 20.0),
                        SizedBox(width: 8.0),
                        Text("John Doe",softWrap: true,overflow: TextOverflow.ellipsis,style: AllStyles.titleBlackNormalTextStyle,)
                      ],),
                      SizedBox(height: 10.0),

                      Row(children: [
                        Icon(Icons.phone,size: 20.0),
                        SizedBox(width: 8.0),
                        Text("+88 802 829 82361",softWrap: true,overflow: TextOverflow.ellipsis,style: AllStyles.titleBlackNormalTextStyle,)
                      ],),
                      SizedBox(height: 10.0),

                      Row(children: [
                        Icon(Icons.location_on,size: 20.0),
                        SizedBox(width: 8.0),
                        Expanded(child: Text("House 123, Road 12, Some Area, Some City",softWrap: true,overflow: TextOverflow.ellipsis,style: AllStyles.titleBlackNormalTextStyle,))
                      ],)

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("bill".tr,style: AllStyles.titleBlackBoldTextStyle,),
                  )),

              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AllColors.whiteColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Full House Cleaning",style: AllStyles.titleBlackNormalTextStyle),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("1,200 - 1,800 SFT"),
                          Text("৳ 5,000",style: AllStyles.titleBlackNormalTextStyle,)
                        ],
                      ),
                      const SizedBox(height: 4.0),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          color: AllColors.grayColor,
                          height: 1.0
                      ),
                      const SizedBox(height: 5.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal",style: AllStyles.titleBlackNormalTextStyle,),
                          Text("৳ 5,000",style: AllStyles.titleBlackNormalTextStyle,)
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Charge",style: AllStyles.titleBlackNormalTextStyle,),
                          Text("৳ 5,000",style: AllStyles.titleBlackNormalTextStyle,)
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Discount",style: AllStyles.titleBlackNormalTextStyle,),
                          Text("৳ 5,000",style: AllStyles.titleBlackNormalTextStyle,)
                        ],
                      ),
                      const SizedBox(height: 2.0),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          color: AllColors.grayColor,
                          height: 1.0
                      ),
                      const SizedBox(height: 5.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total",style: AllStyles.titleBlackNormalTextStyle,),
                          Text("৳ 5,000",style: AllStyles.titleBlackNormalTextStyle,)
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Paid",style: AllStyles.titleBlackNormalTextStyle,),
                          Text("৳ 5,000",style: AllStyles.titleBlackNormalTextStyle,)
                        ],
                      ),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Due",style: AllStyles.titleBlackNormalTextStyle,),
                          Text("৳ 5,000",style: AllStyles.titleBlackNormalTextStyle,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height:15.0),
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: AllColors.whiteColor,
                    borderRadius: BorderRadius.circular(6.0)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Payment Method"),
                    Text("Cash")

                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              CustomButton(title: 'Download Invoice', onTap: (){}),
              const SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
