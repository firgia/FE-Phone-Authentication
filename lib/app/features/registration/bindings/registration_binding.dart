import 'package:get/get.dart';
import 'package:phone_authentication/app/features/registration/controllers/registration_controller.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
  }
}
