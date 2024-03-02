// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum LanguageType {
  ENGLISH,BANGLA
}



class ProfileController extends GetxController{

String name="Abdullah al Noman";
String username="noman123";
String email="noman@gmail.com";



int groupValue=0;


void updateGroupValue(int value){
  groupValue=value;
  update();
}


void changeLanguage(LanguageType languageType){

  if(languageType==LanguageType.BANGLA){
    Get.updateLocale(const Locale('bn','BD'));
    return;

  }
  if(languageType==LanguageType.ENGLISH){
    Get.updateLocale(const Locale('en','US'));
    return;
  }

}


}