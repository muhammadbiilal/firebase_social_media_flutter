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
    apiKey: 'AIzaSyCYMl6J2aw3pDuIBVXxtZXjbOTPOA6gPeM',
    appId: '1:575777312639:web:2d271be7b289cecef2544a',
    messagingSenderId: '575777312639',
    projectId: 'social-media-66a25',
    authDomain: 'social-media-66a25.firebaseapp.com',
    storageBucket: 'social-media-66a25.firebasestorage.app',
    measurementId: 'G-7VG7YYML9Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7M31RNrxEDSm9RbymJ9FMtAivrykUsQg',
    appId: '1:575777312639:android:2114a4ee51f05208f2544a',
    messagingSenderId: '575777312639',
    projectId: 'social-media-66a25',
    storageBucket: 'social-media-66a25.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClTY2is3bB65IdmaFdgpTbVs--k2ILiBo',
    appId: '1:575777312639:ios:690aee77f7a8b8cef2544a',
    messagingSenderId: '575777312639',
    projectId: 'social-media-66a25',
    storageBucket: 'social-media-66a25.firebasestorage.app',
    iosBundleId: 'com.example.techMedia',
  );
}
