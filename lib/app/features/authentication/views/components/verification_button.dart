part of authentication_view;

class _VerificationButton extends GetView<AuthenticationController> {
  const _VerificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ElevatedButton(
          onPressed: controller.isLoading.value
              ? null
              : () => controller.verifySmsCode(),
          child: controller.isLoading.value
              ? SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                )
              : Text("Verify")),
    );
  }
}
