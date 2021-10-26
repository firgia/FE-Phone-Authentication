import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_authentication/app/config/routes/app_pages.dart';
import 'package:phone_authentication/app/constants/assets_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _initialize();
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: Get.width * 0.5,
          child: Image.asset(
            ImageRasterConstant.logoGiaDeveloper,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void _initialize() {
    Firebase.initializeApp().then((value) async {
      await Future.delayed(Duration(seconds: 2));
      if (FirebaseAuth.instance.currentUser != null) {
        Get.offNamed(Routes.home);
      } else {
        Get.offNamed(Routes.login);
      }
    });
  }
}
