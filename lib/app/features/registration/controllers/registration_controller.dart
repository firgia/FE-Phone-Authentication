import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_authentication/app/config/routes/app_pages.dart';
import 'package:phone_authentication/app/utils/services/firebase_services.dart';

class RegistrationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final phoneNumber = TextEditingController();
  final isLoading = false.obs;

  void goToLoginScreen() {
    Get.offNamed(Routes.login);
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      UserServices.phoneNumberExists(phoneNumber.text.trim(), onError: (_) {})
          .then((exist) {
        isLoading.value = false;
        if (exist) {
          Get.snackbar(
            "Registration Failed",
            "Phone Number already exists",
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
          );
        } else {
          Get.snackbar(
            "Sending OTP",
            "check your message",
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
          );
          Get.toNamed(
            Routes.authentication,
            arguments:
                Registrant(name: name.text, phoneNumber: phoneNumber.text),
          );
        }
      });
    }
  }
}
