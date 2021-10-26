part of home_view;

class _Profile extends GetView<HomeController> {
  const _Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading.value
          ? Align(
              alignment: Alignment.topCenter,
              child: CircularProgressIndicator())
          : Card(
              child: ListTile(
                title: Text(controller.user.value?.name ?? "-"),
                subtitle: Text(controller.user.value?.phoneNumber ?? "-"),
              ),
            ),
    );
  }
}
