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
    apiKey: 'AIzaSyAHf2Xr_3HhmFKNQZy_TcY1LTsZFMJzXXw',
    appId: '1:478757664520:web:aaedeb46c300a7ee495ebd',
    messagingSenderId: '478757664520',
    projectId: 'sinuous-branch-252616',
    authDomain: 'sinuous-branch-252616.firebaseapp.com',
    databaseURL: 'https://sinuous-branch-252616-default-rtdb.firebaseio.com',
    storageBucket: 'sinuous-branch-252616.appspot.com',
    measurementId: 'G-WMK0WD0K53',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpsA0As7ONQyY7JhBe9RnUuDJHobE1FUQ',
    appId: '1:478757664520:android:430513566f569126495ebd',
    messagingSenderId: '478757664520',
    projectId: 'sinuous-branch-252616',
    databaseURL: 'https://sinuous-branch-252616-default-rtdb.firebaseio.com',
    storageBucket: 'sinuous-branch-252616.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVJTLEFw6rxceLbNKRTXVrPif0H1nO_04',
    appId: '1:478757664520:ios:8051a8553641563b495ebd',
    messagingSenderId: '478757664520',
    projectId: 'sinuous-branch-252616',
    databaseURL: 'https://sinuous-branch-252616-default-rtdb.firebaseio.com',
    storageBucket: 'sinuous-branch-252616.appspot.com',
    androidClientId: '478757664520-d0qtu4rbi1om57oaf8ue94nbkrs269t9.apps.googleusercontent.com',
    iosClientId: '478757664520-vq644hjv0vti3k9mmqvv2hjgbrfvsq5b.apps.googleusercontent.com',
    iosBundleId: 'com.mycompany.parkingapp',
  );
}