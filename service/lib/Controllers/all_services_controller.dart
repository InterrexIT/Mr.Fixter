import 'package:get/get.dart';
import 'package:service/Models/service_model.dart';

class AllServicesController extends GetxController{

  int initialTapIndex=0;


  void updateTapIndex(int index){
    initialTapIndex=index;
    update();
  }

  List allServicesList=[
    {
      "title":"Laundry",
       "image":"Assets/images/service1.png",
      "service":[
        ServiceModel('Assets/images/photo1.png', "Men's Grooming"),
        ServiceModel('Assets/images/photo2.png', "Home Makeover Service"),
        ServiceModel('Assets/images/photo3.png', "Men's Grooming"),
        ServiceModel('Assets/images/photo4.png', "Home Makeover Service"),
      ]
    },

    {
      "title":"Cleaning Service",
      "image":"Assets/images/service2.png",
      "service":[
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ]
    },

    {
      "title":"Cleaning Service",
      "image":"Assets/images/service1.png",
      "service":[
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ]
    },

    {
      "title":"Cleaning Service",
      "image":"Assets/images/service1.png",
      "service":[
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ]
    },

    {
      "title":"AC Repair",
      "image":"Assets/images/service2.png",
      "service":[
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ]
    },

    {
      "title":"AC Repair",
      "image":"Assets/images/service1.png",
      "service":[
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ]
    },
    {
      "title":"AC Repair",
      "image":"Assets/images/service2.png",
      "service":[
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
        ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
        ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ]
    }








  ];





}