import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:phone_authentication/app/config/routes/app_pages.dart';
import 'package:phone_authentication/app/utils/services/firebase_services.dart';

class HomeController extends GetxController {
  final _auth = FirebaseAuth.instance;
  late Rx<Registrant?> user = Rx(null);
  var isLoading = true.obs;

  @override
  void onInit() async {
    UserServices.getUserLogin().then((result) {
      user.value = result;
      isLoading.value = false;
    });
    super.onInit();
  }

  void logout() async {
    await _auth.signOut().then((value) => Get.offNamed(Routes.login));
  }
}
