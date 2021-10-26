library login_view;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:phone_authentication/app/constants/assets_constant.dart';
import 'package:phone_authentication/app/features/login/controllers/login_controller.dart';

part '../components/phone_number_field.dart';
part '../components/illustration_image.dart';
part '../components/header_text.dart';
part '../components/login_button.dart';
part '../components/registration_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _HeaderText(),
                ),
                Spacer(flex: 4),
                _IllustrationImage(),
                Spacer(flex: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _PhoneNumberField(),
                ),
                Spacer(flex: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _LoginButton(),
                ),
                Spacer(flex: 5),
                _RegistrationButton(),
                Spacer(flex: 2),
              ],
            ),
          ),
        ]))
      ],
    ));
  }
}
