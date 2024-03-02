import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
// import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:get/get.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/Widgets/custom_app_bar.dart';
import 'package:service/Widgets/custom_button_widget.dart';
import 'package:service/routes.dart';
class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {

  @override
  void initState() {
    super.initState();
    // Force selection of today on first load, so that the list of today's events gets shown.
    _handleNewDate(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }

  void _handleNewDate(date) {
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        icon: Icons.arrow_back,
        title: "schedule".tr,
        onTap: (){Get.back();},
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0,bottom: 10.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 335.0,
                  child: Card(
                    child: SafeArea(
                      child: Calendar(
                        startOnMonday: true,
                        // weekDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                        isExpandable: true,
                        selectedColor: AllColors.blackColor,
                        selectedTodayColor: AllColors.grayColor,
                        todayColor: Colors.orange,
                        locale: Get.deviceLocale.toString(),
                        hideTodayIcon:true,
                        isExpanded: true,
                        hideBottomBar: false,
                        expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                        onMonthChanged: (value) {
                        },
                        onDateSelected: (value) {
                        },
                        onRangeSelected: (value) {
                        },
                        datePickerType: DatePickerType.hidden,
                        dayOfWeekStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
                        //  showEvents: showEvents,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 35.0,
              child: CustomButton(
                title: "checkout".tr,
                onTap: (){
                  Get.toNamed(finalCheckoutScreen);
                },
              ),

            )
          ],
        ),
      ),

    );
  }

}