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
    apiKey: 'AIzaSyDNF5Jg-_5HiPBOkoYv08DAbqv21eImxfw',
    appId: '1:733714229202:web:2d8e65670fe36ca4090a0b',
    messagingSenderId: '733714229202',
    projectId: 'sahagri',
    authDomain: 'sahagri.firebaseapp.com',
    storageBucket: 'sahagri.appspot.com',
    measurementId: 'G-Z4GMK3H2BS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOpC36DXNQjBZSMJxwsLuh6yIHnR9CZcA',
    appId: '1:733714229202:android:538909d6a68c4d32090a0b',
    messagingSenderId: '733714229202',
    projectId: 'sahagri',
    storageBucket: 'sahagri.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvbg-xvVK6r__E9fNUQ7pxY-d3d1_yHfo',
    appId: '1:733714229202:ios:87c11ef671ceb168090a0b',
    messagingSenderId: '733714229202',
    projectId: 'sahagri',
    storageBucket: 'sahagri.appspot.com',
    iosClientId: '733714229202-q3rmm629cich0ar4o9i9th6834na9d34.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvbg-xvVK6r__E9fNUQ7pxY-d3d1_yHfo',
    appId: '1:733714229202:ios:87c11ef671ceb168090a0b',
    messagingSenderId: '733714229202',
    projectId: 'sahagri',
    storageBucket: 'sahagri.appspot.com',
    iosClientId: '733714229202-q3rmm629cich0ar4o9i9th6834na9d34.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
