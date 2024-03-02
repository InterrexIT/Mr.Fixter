import 'package:get/get.dart';
import 'package:service/Screens/all_services_screen.dart';
import 'package:service/Screens/bottom_nav_bar.dart';
import 'package:service/Screens/calender_screen.dart';
import 'package:service/Screens/checkout_screen.dart';
import 'package:service/Screens/dashboard_screen.dart';
import 'package:service/Screens/final_checkout_screen.dart';
import 'package:service/Screens/order_details_screen.dart';
import 'package:service/Screens/order_done_screen.dart';
import 'package:service/Screens/same_category_service_screen.dart';
import 'package:service/Screens/service_details_screen.dart';

const String dashboardScreen = "/dashboardScreen";
const String bottomNavBarScreen = "/bottomNavBarScreen";
const String allServicesScreen = "/allServicesScreen";
const String sameCategoryServiceScreen = "/sameCategoryServiceScreen";
const String orderDoneScreen = "/orderDoneScreen";
const String checkoutScreen = "/checkoutScreen";
const String serviceDetailsScreen = "/serviceDetailsScreen";
const String finalCheckoutScreen = "/finalCheckoutScreen";
const String calenderScreen = "/calenderScreen";
const String orderDetailsScreen = "/orderDetailsScreen";

List<GetPage> pages = [
  GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: bottomNavBarScreen,
      page: () => const BottomNavBar(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: allServicesScreen,
      page: () => AllServicesScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: sameCategoryServiceScreen,
      page: () => SameCategoryServiceScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: orderDoneScreen,
      page: () => const OrderDoneScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: serviceDetailsScreen,
      page: () => const ServiceDetailsScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: finalCheckoutScreen,
      page: () => const FinalCheckoutScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: calenderScreen,
      page: () => const CalenderScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
  GetPage(
      name: orderDetailsScreen,
      page: () => const OrderDetailsScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 1)),
];
