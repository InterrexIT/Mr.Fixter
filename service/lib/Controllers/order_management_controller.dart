import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/Models/ongoing_service_model.dart';

class OrderManagementController extends GetxController  with GetSingleTickerProviderStateMixin{

TabController? tabController;
RxInt tabIndex=0.obs;


@override
void onInit() {

  tabController = TabController(length: 2, vsync: this,initialIndex: 0);
  super.onInit();
}
@override
void dispose() {
  tabController!.dispose();
  super.dispose();
}


changeValue(int index){
  tabIndex.value=index;
}

List<OngoingServiceModel> ongoingOrders=[
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),
OngoingServiceModel("Home Cleaning", "Assets/images/service2.png", "500", "Nov 12,2023", "Awesome Cleaners", "John Smith"),

  
];




}