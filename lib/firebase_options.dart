// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDI-9LsJOpEMUTpT1lgQHEwODr3EDSjoU8',
    appId: '1:656429152785:web:bd99c71fbf75bf06fdcfb0',
    messagingSenderId: '656429152785',
    projectId: 'e-commercapp-949bb',
    authDomain: 'e-commercapp-949bb.firebaseapp.com',
    storageBucket: 'e-commercapp-949bb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGSaX-4GanNkd2QIdRt_paU3K6f21tEXQ',
    appId: '1:656429152785:android:6fdb4aea4d34c588fdcfb0',
    messagingSenderId: '656429152785',
    projectId: 'e-commercapp-949bb',
    storageBucket: 'e-commercapp-949bb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8SZQEl8AG8J67qOFYKflPLiVUl4Rhzzw',
    appId: '1:656429152785:ios:a14d179d8008b585fdcfb0',
    messagingSenderId: '656429152785',
    projectId: 'e-commercapp-949bb',
    storageBucket: 'e-commercapp-949bb.appspot.com',
    iosBundleId: 'com.example.tStore',
  );
}
