import 'package:get/get.dart';
import 'package:phone_authentication/app/features/authentication/controllers/authentication_controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationController());
  }
}
