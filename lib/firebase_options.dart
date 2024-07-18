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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAa_rtYBSsxh1EMNLZFKcItotoufdujHrc',
    appId: '1:960296313182:web:59a4197c4fc45160b16fcf',
    messagingSenderId: '960296313182',
    projectId: 'flutterapp-1af3d',
    authDomain: 'flutterapp-1af3d.firebaseapp.com',
    storageBucket: 'flutterapp-1af3d.appspot.com',
    measurementId: 'G-J14CB26XJB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjCsy9tx2zHyAsB6FT2kVbUO5KeQlhTKI',
    appId: '1:960296313182:android:2d7e911a65177a52b16fcf',
    messagingSenderId: '960296313182',
    projectId: 'flutterapp-1af3d',
    storageBucket: 'flutterapp-1af3d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsh-_UxuA8r2p4Pa9S6hYoojhoi7DL9bQ',
    appId: '1:960296313182:ios:6c2a2fb19b3bdbf7b16fcf',
    messagingSenderId: '960296313182',
    projectId: 'flutterapp-1af3d',
    storageBucket: 'flutterapp-1af3d.appspot.com',
    iosBundleId: 'fireBaseFlutter.com.fireBaseFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsh-_UxuA8r2p4Pa9S6hYoojhoi7DL9bQ',
    appId: '1:960296313182:ios:6c2a2fb19b3bdbf7b16fcf',
    messagingSenderId: '960296313182',
    projectId: 'flutterapp-1af3d',
    storageBucket: 'flutterapp-1af3d.appspot.com',
    iosBundleId: 'fireBaseFlutter.com.fireBaseFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAa_rtYBSsxh1EMNLZFKcItotoufdujHrc',
    appId: '1:960296313182:web:b6a1e6cded4ce45ab16fcf',
    messagingSenderId: '960296313182',
    projectId: 'flutterapp-1af3d',
    authDomain: 'flutterapp-1af3d.firebaseapp.com',
    storageBucket: 'flutterapp-1af3d.appspot.com',
    measurementId: 'G-KFVVTCKXSM',
  );
}
