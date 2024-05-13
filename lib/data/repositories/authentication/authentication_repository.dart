import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onbarding/onboarding.dart';
import 'package:t_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:t_store/utils/exceptions/firebase_exceptions.dart';
import 'package:t_store/utils/exceptions/format_exceptions.dart';
import 'package:t_store/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //  Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  //  Called from main.dart on app launch
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // funcation to show Relevant screen
  screenRedirect() async {
    // local storage
    if (kDebugMode) {
      print('============== GET STOREAGE Auth Re.. ==========');
      print(deviceStorage.read('isFirstTime'));
    }
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(LoginScreen())
        : Get.offAll(OnboardingScreen());
  }

  /*-------------------- Email & Password signi-in ------------------*/

  //[EmailAuthentation]   - signin

  //[EmailAuthentation]   - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw ' Something went wrong, Please try again';
    }
  }

  //[EmailVerfifcation]   - Mail Verfifcation

  //[ReAuthenticate]   - ReAuthenticate User

  //[EmailAuthentation]   - Forget Password

  /*-------------------- Federated identity & social signi-in ------------------*/

  //[gooogleAuthentation]   - gooogle

  //[facebookAuthentation]   - facebook

  /*-------------------- End Federated identity & social signi-in ------------------*/

  //[LogoutUser]   - Valid for any anthentication

  //[DeleteUser]   - Remove user Auth and Firestore Account
}
