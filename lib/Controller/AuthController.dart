import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_kitap_bar/Config/Messages.dart';
import 'package:flutter_kitap_bar/Pages/HomePage/HomePage.dart';
import 'package:flutter_kitap_bar/Pages/WelcomePage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final auth = FirebaseAuth.instance;

  void loginWithEmail() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await auth.signInWithCredential(credential);
      Get.offAll(HomePage());
      successMessage("Вход успешно выполнен");
    } catch (ex) {
      print(ex);
      errorMessage("Ошибка аутентификации");
    }
    isLoading.value = false;
  }

  void signout() async {
    await auth.signOut();
    Get.offAll(const WelcomePage());
    successMessage("Вы вышли с аккаунта");
  }
}
