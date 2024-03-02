import 'package:get/get.dart';
import 'package:service/Models/service_model.dart';

class DashboardController extends GetxController{

List<ServiceModel> topServices=[
  ServiceModel('Assets/images/service1.png', "Men's Grooming"),
  ServiceModel('Assets/images/service2.png', "Laundry"),
  ServiceModel('Assets/images/service1.png', "Men's Grooming"),
  ServiceModel('Assets/images/service2.png', "Laundry"),
  ServiceModel('Assets/images/service1.png', "Men's Grooming"),
  ServiceModel('Assets/images/service2.png', "Laundry"),
];


List servicesList=[
  {
    "title":"Home Care",
    "service":[
      ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
      ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
      ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
    ]
  },

  {
    "title":"Personal  Care",
    "service":[
      ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
      ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
      ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
    ]
  },

  {
    "title":"Special  Care",
    "service":[
      ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
      ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
      ServiceModel('Assets/images/banner1.png', "Men's Grooming"),
      ServiceModel('Assets/images/banner2.png', "Home Makeover Service"),
    ]
  }




];



}