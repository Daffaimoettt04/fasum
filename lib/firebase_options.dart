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
    apiKey: 'AIzaSyAPTyAM0-2Lxiy-84rg9JU8OmRdAQTttvo',
    appId: '1:684891999936:web:220b290813bf39225ba725',
    messagingSenderId: '684891999936',
    projectId: 'fasum-04',
    authDomain: 'fasum-04.firebaseapp.com',
    databaseURL: 'https://fasum-04-default-rtdb.firebaseio.com',
    storageBucket: 'fasum-04.appspot.com',
    measurementId: 'G-GZJ70ZGJT3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvIs43W0CL1XBaT44gKVgmTPPcy7pnLvE',
    appId: '1:684891999936:android:c753b3c449364c065ba725',
    messagingSenderId: '684891999936',
    projectId: 'fasum-04',
    databaseURL: 'https://fasum-04-default-rtdb.firebaseio.com',
    storageBucket: 'fasum-04.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSs8rJy427iEY1ccI4IY0CstFRmj3n8QY',
    appId: '1:684891999936:ios:ff8309b95b6163b65ba725',
    messagingSenderId: '684891999936',
    projectId: 'fasum-04',
    databaseURL: 'https://fasum-04-default-rtdb.firebaseio.com',
    storageBucket: 'fasum-04.appspot.com',
    iosBundleId: 'com.example.fasum',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSs8rJy427iEY1ccI4IY0CstFRmj3n8QY',
    appId: '1:684891999936:ios:ff8309b95b6163b65ba725',
    messagingSenderId: '684891999936',
    projectId: 'fasum-04',
    databaseURL: 'https://fasum-04-default-rtdb.firebaseio.com',
    storageBucket: 'fasum-04.appspot.com',
    iosBundleId: 'com.example.fasum',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAPTyAM0-2Lxiy-84rg9JU8OmRdAQTttvo',
    appId: '1:684891999936:web:dbb11b743220ae585ba725',
    messagingSenderId: '684891999936',
    projectId: 'fasum-04',
    authDomain: 'fasum-04.firebaseapp.com',
    databaseURL: 'https://fasum-04-default-rtdb.firebaseio.com',
    storageBucket: 'fasum-04.appspot.com',
    measurementId: 'G-4G1H75Z2KD',
  );
}
