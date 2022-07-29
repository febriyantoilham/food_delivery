import 'package:food_delivery/screen/home/home_page.dart';
import 'package:food_delivery/screen/navbar.dart';
import 'package:food_delivery/screen/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String splash = "/splash";
  static const String navbar = "/navbar";
  static const String home = "/home";

  static String getSplash() => splash;
  static String getNavbar() => navbar;
  static String getHome() => home;

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: home, page: () => const HomePage()),
  ];
}
