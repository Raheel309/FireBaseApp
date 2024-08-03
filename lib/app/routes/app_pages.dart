import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/otp_screen/bindings/otp_screen_binding.dart';
import '../modules/otp_screen/views/otp_screen_view.dart';
import '../modules/phone-auth/bindings/phone_auth_binding.dart';
import '../modules/phone-auth/views/phone_auth_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.PHONE_AUTH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_AUTH,
      page: () => const PhoneAuthView(),
      binding: PhoneAuthBinding(),
    ),
    GetPage(
      name: _Paths.OTP_SCREEN,
      page: () => const OtpScreenView(),
      binding: OtpScreenBinding(),
    ),
  ];
}
