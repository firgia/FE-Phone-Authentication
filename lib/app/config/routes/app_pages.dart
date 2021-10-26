import 'package:get/get.dart';
import 'package:phone_authentication/app/features/authentication/bindings/authentication_binding.dart';
import 'package:phone_authentication/app/features/authentication/views/screens/authentication_screen.dart';
import 'package:phone_authentication/app/features/home/bindings/home_binding.dart';
import 'package:phone_authentication/app/features/home/views/views/home_screen.dart';
import 'package:phone_authentication/app/features/login/bindings/login_binding.dart';
import 'package:phone_authentication/app/features/login/views/screens/login_screen.dart';
import 'package:phone_authentication/app/features/registration/bindings/registration_binding.dart';
import 'package:phone_authentication/app/features/registration/views/screens/registration_screen.dart';
import 'package:phone_authentication/app/features/splash/views/screens/splash_screen.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.registration,
      page: () => RegistrationScreen(),
      binding: RegistrationBinding(),
    ),
    GetPage(
        name: _Paths.authentication,
        page: () => AuthenticationScreen(),
        transition: Transition.cupertino,
        binding: AuthenticationBinding()),
    GetPage(
      name: _Paths.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    )
  ];
}
