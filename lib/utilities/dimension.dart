import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double statusBarHeight = Get.context!.mediaQueryViewPadding.top;

  // Height
  static double height5 = screenHeight / (screenHeight / 5);
  static double height10 = screenHeight / (screenHeight / 10);
  static double height15 = screenHeight / (screenHeight / 15);
  static double height20 = screenHeight / (screenHeight / 20);
  static double height30 = screenHeight / (screenHeight / 30);
  static double height40 = screenHeight / (screenHeight / 40);
  static double height50 = screenHeight / (screenHeight / 50);

  // Width
  static double width5 = screenWidth / (screenWidth / 5);
  static double width10 = screenWidth / (screenWidth / 10);
  static double width15 = screenWidth / (screenWidth / 15);
  static double width20 = screenWidth / (screenWidth / 20);
  static double width30 = screenWidth / (screenWidth / 30);
  static double width40 = screenWidth / (screenWidth / 40);
  static double width50 = screenWidth / (screenWidth / 50);

  static double customWidth = 10;
  static double widthx = screenWidth / (screenWidth / customWidth);

  //Radius
  static double radius10 = 10;

  // Font Size
  static double font16 = 16;
  static double font18 = 18;
  static double font25 = 25;
  static double font30 = 30;
}
