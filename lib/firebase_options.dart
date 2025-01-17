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
    apiKey: 'AIzaSyD_vG5POLH5yP85YuRMesIpWVmlJ3qjqN4',
    appId: '1:98073710193:web:1c7826b9ac07b4ecae95d0',
    messagingSenderId: '98073710193',
    projectId: 'my-awesome-mobile-app',
    authDomain: 'my-awesome-mobile-app.firebaseapp.com',
    storageBucket: 'my-awesome-mobile-app.firebasestorage.app',
    measurementId: 'G-4Z34F97SDL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjZlre6K-iwDylrsB7RlEjBM9Lhn3t_DE',
    appId: '1:98073710193:android:cc7774995a6eaccfae95d0',
    messagingSenderId: '98073710193',
    projectId: 'my-awesome-mobile-app',
    storageBucket: 'my-awesome-mobile-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPnmJGSBeLk6TPXSMqg1k4w9vk9LcMOJY',
    appId: '1:98073710193:ios:980a098e361598e3ae95d0',
    messagingSenderId: '98073710193',
    projectId: 'my-awesome-mobile-app',
    storageBucket: 'my-awesome-mobile-app.firebasestorage.app',
    iosBundleId: 'com.example.myFirstMobileApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPnmJGSBeLk6TPXSMqg1k4w9vk9LcMOJY',
    appId: '1:98073710193:ios:980a098e361598e3ae95d0',
    messagingSenderId: '98073710193',
    projectId: 'my-awesome-mobile-app',
    storageBucket: 'my-awesome-mobile-app.firebasestorage.app',
    iosBundleId: 'com.example.myFirstMobileApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD_vG5POLH5yP85YuRMesIpWVmlJ3qjqN4',
    appId: '1:98073710193:web:8d2b6b41eee59e8dae95d0',
    messagingSenderId: '98073710193',
    projectId: 'my-awesome-mobile-app',
    authDomain: 'my-awesome-mobile-app.firebaseapp.com',
    storageBucket: 'my-awesome-mobile-app.firebasestorage.app',
    measurementId: 'G-G0V9ZN6B1M',
  );
}
