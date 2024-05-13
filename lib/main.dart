import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/app.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/firebase_options.dart';

Future<void> main() async {
  // Widgets Binding
  final WidgetsBinding widgetsbinding =
      WidgetsFlutterBinding.ensureInitialized();
  // GetX locl Storage
  await GetStorage.init();

  // Aawit Splash until  
  FlutterNativeSplash.preserve(widgetsBinding: widgetsbinding);

  // Initalize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  runApp(const App());
}
