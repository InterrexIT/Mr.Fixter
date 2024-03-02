import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:service/Const/all_colors.dart';
import 'package:service/language_translation.dart';
import 'package:service/routes.dart';

void main()async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        // Set the background color here
        scaffoldBackgroundColor: AllColors.backgroundColor
      ),
      debugShowCheckedModeBanner: false,
      translations: Language(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("en","US"),
      getPages: pages,
      initialRoute: bottomNavBarScreen,
    );
  }
}
