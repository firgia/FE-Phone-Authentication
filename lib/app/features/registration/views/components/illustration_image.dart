part of registration_view;

class _IllustrationImage extends StatelessWidget {
  const _IllustrationImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.45,
      height: Get.width * 0.45,
      child: SvgPicture.asset(
        ImageVectorConstant.registrationIllustration,
        fit: BoxFit.cover,
      ),
    );
  }
}
