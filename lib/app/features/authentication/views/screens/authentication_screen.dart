library authentication_view;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:phone_authentication/app/constants/assets_constant.dart';
import 'package:phone_authentication/app/features/authentication/controllers/authentication_controller.dart';

import 'package:sms_autofill/sms_autofill.dart';

part '../components/header_text.dart';
part '../components/illustration_image.dart';
part '../components/pin_auto_field.dart';
part '../components/resend_button.dart';
part '../components/verification_button.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

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
                SizedBox(height: 20),
                Container(alignment: Alignment.topLeft, child: BackButton()),
                Spacer(flex: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _HeaderText(),
                ),
                Spacer(flex: 4),
                _IllustrationImage(),
                Spacer(flex: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: _PinAutoField(),
                ),
                Spacer(flex: 3),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _VerificationButton(),
                ),
                Spacer(flex: 5),
                _ResendButton(),
                Spacer(flex: 2),
              ],
            ),
          ),
        ]))
      ],
    ));
  }
}
