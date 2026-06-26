import 'package:get/get.dart';
import 'package:snapitai/modules/home/bindings.dart';
import 'package:snapitai/modules/home/home_screen.dart';

class AppRoutes {
  static String homeScreen = "/home";
  static String loginScreen = "/login";

  static final pages = [
    GetPage(name: homeScreen, page: () => HomeScreen(), binding: HomeBindings())
  ];
} 