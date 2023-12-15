import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_kitap_bar/Pages/HomePage/HomePage.dart';
import 'package:flutter_kitap_bar/Pages/WelcomePage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplaceController extends GetxController {
  final auth = FirebaseAuth.instance;


  @override
  void onInit() {
    super.onInit();
    splaceController();
  }

  void splaceController() {
    Future.delayed(Duration(seconds: 4), () {
      if (auth.currentUser != null) {
        Get.offAll(const HomePage());
      } else {
        Get.offAll(const WelcomePage());
      }
    });
  }
}
