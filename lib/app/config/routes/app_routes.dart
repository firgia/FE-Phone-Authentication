part of 'app_pages.dart';

abstract class Routes {
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const registration = _Paths.registration;
  static const authentication = _Paths.authentication;
  static const home = _Paths.home;
}

abstract class _Paths {
  static const splash = '/splash/';
  static const login = '/login/';
  static const registration = '/registration/';
  static const authentication = '/authentication/';
  static const home = '/home/';
}
