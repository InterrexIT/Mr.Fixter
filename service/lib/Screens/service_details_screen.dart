import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Const/all_styles.dart';
import 'package:service/Const/all_texts.dart';
import 'package:service/Widgets/custom_app_bar.dart';
import 'package:service/Widgets/custom_button_widget.dart';
import 'package:service/routes.dart';
class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Full House Cleaning",icon: Icons.arrow_back,onTap: (){
        Get.back();
      }),
      body: Container(
        padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0,bottom: 10.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                        image: DecorationImage(
                          image: AssetImage("Assets/images/cleaning.png"),
                        )
                    ),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: Container(
                            height: 22.0,
                            width: 130.0,
                            decoration: const BoxDecoration(
                                color: AllColors.labelBgColor
                            ),
                            child: const Center(child: Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text("Full House Cleaning",style: AllStyles.subtitleWhiteNormalTextStyle,softWrap: true,overflow: TextOverflow.ellipsis,),
                            ),
                            ),
                          ),
                        ))
                ),

                    const Text("${AllTexts.currency} 5000",style: AllStyles.headingRedTextStyle),
                    const SizedBox(height: 10.0),
                    const Text('Service Details',style: AllStyles.headingBlackTextStyle),
                    const SizedBox(height: 8.0),
                    const Text(AllTexts.serviceDetails),
                    const SizedBox(height: 12.0),
                    const Text("What's Included?",style: AllStyles.headingBlackTextStyle),
                    const SizedBox(height: 8.0),
                    const Text(AllTexts.includedText),
                    const SizedBox(height: 12.0),
                    const Text("What's Not Included?",style: AllStyles.headingBlackTextStyle),
                    const SizedBox(height: 8.0),
                    const Text(AllTexts.includedText),
                    const SizedBox(height: 16.0)
                  ],
                ),
              ),
            ),


            SizedBox(
              height: 35.0,
              child: CustomButton(
                title: "order_now".tr,
                onTap: (){
                   Get.toNamed(checkoutScreen);
                },
              ),

            )
          ],
        ),
      ),
    );
  }
}
