import 'package:flight_booking/modules/auth/binding/signup_binding.dart';
import 'package:flight_booking/modules/auth/signup_screen.dart';
import 'package:flight_booking/modules/home/home_screen.dart';
import 'package:flight_booking/modules/profile/profile_screen.dart';
import 'package:flight_booking/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._(); // private
  static var allPages = [
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.signupScreen,
      page: () => SignupScreen(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: AppRoutes.profileScreen,
      page: () => ProfileScreen(),
    ),
  ];
}
