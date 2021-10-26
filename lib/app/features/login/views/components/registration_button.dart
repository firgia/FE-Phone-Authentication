part of login_view;

class _RegistrationButton extends GetView<LoginController> {
  const _RegistrationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account ? "),
        TextButton(
          onPressed: () => controller.goToRegistrationScreen(),
          child: Text("register"),
        )
      ],
    );
  }
}
