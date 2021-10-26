part of authentication_view;

class _ResendButton extends GetView<AuthenticationController> {
  const _ResendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Didn't receive the code ? "),
        Obx(
          () => TextButton(
            onPressed: (controller.isCanResendCode.value)
                ? () => controller.verifyPhoneNumber()
                : null,
            child: Text((controller.durationCountdown.value) > 0
                ? "resend (${controller.durationCountdown.value})"
                : "resend"),
          ),
        )
      ],
    );
  }
}
