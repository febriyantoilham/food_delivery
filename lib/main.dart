import 'package:flutter/material.dart';
import 'package:food_delivery/route.dart';
import 'package:food_delivery/utilities/color.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        primaryColor: AppColor.mainColor,
      ),
      initialRoute: RouteHelper.getSplash(),
      getPages: RouteHelper.routes,
    );
  }
}
