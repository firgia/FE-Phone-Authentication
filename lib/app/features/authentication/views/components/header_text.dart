part of authentication_view;

class _HeaderText extends GetView<AuthenticationController> {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Verification Code", style: Theme.of(context).textTheme.headline5),
        SizedBox(height: 5),
        RichText(
          text:
              TextSpan(style: Theme.of(context).textTheme.bodyText2, children: [
            TextSpan(text: "Please enter the code sent to "),
            TextSpan(
                text: controller.phoneNumber ??
                    controller.registrant?.phoneNumber ??
                    "-",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 16))
          ]),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
