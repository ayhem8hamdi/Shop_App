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
    apiKey: 'AIzaSyDgBwP45kVR1IfypkouwBr7w0e1hlCBbms',
    appId: '1:330521244358:web:95002b762974771ce71dc7',
    messagingSenderId: '330521244358',
    projectId: 'shopp-app-6698z',
    authDomain: 'shopp-app-6698z.firebaseapp.com',
    storageBucket: 'shopp-app-6698z.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6hV_JC8SMgQvO1gzxSQJtkm1CHXQSH4I',
    appId: '1:330521244358:android:60ae21fb76c4dbd6e71dc7',
    messagingSenderId: '330521244358',
    projectId: 'shopp-app-6698z',
    storageBucket: 'shopp-app-6698z.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSz1kG8sVgNww20T6KutacHUfx7xNAuhc',
    appId: '1:330521244358:ios:38369a330e8a27f4e71dc7',
    messagingSenderId: '330521244358',
    projectId: 'shopp-app-6698z',
    storageBucket: 'shopp-app-6698z.appspot.com',
    iosBundleId: 'com.example.shoppApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSz1kG8sVgNww20T6KutacHUfx7xNAuhc',
    appId: '1:330521244358:ios:38369a330e8a27f4e71dc7',
    messagingSenderId: '330521244358',
    projectId: 'shopp-app-6698z',
    storageBucket: 'shopp-app-6698z.appspot.com',
    iosBundleId: 'com.example.shoppApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDgBwP45kVR1IfypkouwBr7w0e1hlCBbms',
    appId: '1:330521244358:web:6239d202441cfa30e71dc7',
    messagingSenderId: '330521244358',
    projectId: 'shopp-app-6698z',
    authDomain: 'shopp-app-6698z.firebaseapp.com',
    storageBucket: 'shopp-app-6698z.appspot.com',
  );
}
