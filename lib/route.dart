import 'package:food_delivery/screen/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String splash = "/splash";
  static String getSplash() => splash;
  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen())
  ];
}
