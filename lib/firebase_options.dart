// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyDoDIReh_zGbqmvHkhW_jOFJBL-TZVCjAg',
    appId: '1:881099736541:web:3b399e1cb4878853942234',
    messagingSenderId: '881099736541',
    projectId: 'elvale-b7da7',
    authDomain: 'elvale-b7da7.firebaseapp.com',
    storageBucket: 'elvale-b7da7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDygSPKOjFJWM_s4BT2f_V64iH0GNPnK5o',
    appId: '1:881099736541:android:f56628093e5ba627942234',
    messagingSenderId: '881099736541',
    projectId: 'elvale-b7da7',
    storageBucket: 'elvale-b7da7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA307_Lv2yKhuBcoPHWTsadePZP7fhbmB0',
    appId: '1:881099736541:ios:2f6e8d549c48f81c942234',
    messagingSenderId: '881099736541',
    projectId: 'elvale-b7da7',
    storageBucket: 'elvale-b7da7.appspot.com',
    iosBundleId: 'com.example.sistemaBancario',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA307_Lv2yKhuBcoPHWTsadePZP7fhbmB0',
    appId: '1:881099736541:ios:a6f5ef0384ffd864942234',
    messagingSenderId: '881099736541',
    projectId: 'elvale-b7da7',
    storageBucket: 'elvale-b7da7.appspot.com',
    iosBundleId: 'com.example.sistemaBancario.RunnerTests',
  );
}