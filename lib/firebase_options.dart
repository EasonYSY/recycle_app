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
    apiKey: 'AIzaSyCV7SIxBWslyTTHox_hg_EZgE9BavWwo0c',
    appId: '1:549014778793:web:acdf47676c27e0e3818ab8',
    messagingSenderId: '549014778793',
    projectId: 'gdsc-cv-938a5',
    authDomain: 'gdsc-cv-938a5.firebaseapp.com',
    storageBucket: 'gdsc-cv-938a5.appspot.com',
    measurementId: 'G-RGWNQLYK6D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBz9ZSi0bObkepvqAYuZCzpfP7LN4QVXS0',
    appId: '1:549014778793:android:5977abf98e650472818ab8',
    messagingSenderId: '549014778793',
    projectId: 'gdsc-cv-938a5',
    storageBucket: 'gdsc-cv-938a5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUC0wDCinzz0p2RTMr__7XhLDLGpL1RA0',
    appId: '1:549014778793:ios:fe2b48c29b958ef5818ab8',
    messagingSenderId: '549014778793',
    projectId: 'gdsc-cv-938a5',
    storageBucket: 'gdsc-cv-938a5.appspot.com',
    iosClientId: '549014778793-t2s6sl929ne8n4jf7fddi05iestqo13l.apps.googleusercontent.com',
    iosBundleId: 'com.example.recycleApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUC0wDCinzz0p2RTMr__7XhLDLGpL1RA0',
    appId: '1:549014778793:ios:fe2b48c29b958ef5818ab8',
    messagingSenderId: '549014778793',
    projectId: 'gdsc-cv-938a5',
    storageBucket: 'gdsc-cv-938a5.appspot.com',
    iosClientId: '549014778793-t2s6sl929ne8n4jf7fddi05iestqo13l.apps.googleusercontent.com',
    iosBundleId: 'com.example.recycleApp',
  );
}
