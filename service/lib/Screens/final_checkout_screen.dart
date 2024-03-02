import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Widgets/custom_app_bar.dart';
import 'package:service/Widgets/custom_button_widget.dart';
import 'package:service/routes.dart';
class FinalCheckoutScreen extends StatefulWidget {
  const FinalCheckoutScreen({Key? key}) : super(key: key);

  @override
  State<FinalCheckoutScreen> createState() => _FinalCheckoutScreenState();
}

class _FinalCheckoutScreenState extends State<FinalCheckoutScreen> {

  String dropdownValue = 'Cash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "checkout".tr,icon: Icons.arrow_back,onTap: (){
        Get.back();
      },),
      body: Container(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0,bottom: 10.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("schedule_contact_info".tr,style: AllStyles.titleBlackBoldTextStyle,),
                          InkWell(child: Container(
                            padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 2.0,bottom: 2.0),
                            decoration: BoxDecoration(
                                color: AllColors.buttonColor,
                                borderRadius: BorderRadius.circular(6.0)
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.edit,color: AllColors.whiteColor,size: 18.0,),
                                const SizedBox(width: 2.0),
                                Text('edit'.tr,style: AllStyles.titleWhiteNormalTextStyle),
                              ],
                            ),
                          ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("promo_code".tr,style: AllStyles.titleBlackBoldTextStyle,),
                          InkWell(child: Container(
                            padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 2.0,bottom: 2.0),
                            decoration: BoxDecoration(
                                color: AllColors.buttonColor,
                                borderRadius: BorderRadius.circular(6.0)
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.add,color: AllColors.whiteColor,size: 18.0,),
                                const SizedBox(width: 2.0),
                                Text('add'.tr,style: AllStyles.titleWhiteNormalTextStyle),
                              ],
                            ),
                          ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("bill".tr,style: AllStyles.titleBlackBoldTextStyle,),
                        )),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
                    ),
                    const SizedBox(height: 10.0),

                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("payment_method".tr,style: AllStyles.titleBlackNormalTextStyle,),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                style: AllStyles.titleBlackNormalTextStyle,
                                underline: Container(
                                  height: 2,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Cash', 'Bkash', 'Nagad', 'Bank']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("additional_message".tr,style: AllStyles.titleBlackBoldTextStyle,)),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      decoration: BoxDecoration(
                        color: AllColors.whiteColor,
                        borderRadius: BorderRadius.circular(10.0)
                      ),

                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write your message here...',
                          contentPadding: EdgeInsets.only(left: 12.0)
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),

                  ],
                ),
              ),
            ),



            SizedBox(
              height: 35.0,
              child: CustomButton(
                title: "checkout".tr,
                onTap: (){
                  Get.toNamed(orderDoneScreen);
                },
              ),

            )
          ],
        ),
      ),
    );
  }
}
