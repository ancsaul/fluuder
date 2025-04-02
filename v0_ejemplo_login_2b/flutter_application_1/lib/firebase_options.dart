// Este archivo se genera automáticamente con flutterfire configure
// Aquí solo muestro un ejemplo de cómo se vería

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBroLZWRh-hoauGugEsKrOai6hNptaYRp4',
    appId: '1:460460887127:android:9c036e84d93183495be712',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID',
    projectId: 'flutter_application_1 (android)',
    authDomain: 'marzo-albert-2b.firebaseapp.com',
    storageBucket: 'marzo-albert-2b.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAstI_8THn_K48NCmRM6JXA0PXTN44kGqg',
    appId: '1:460460887127:android:9c036e84d93183495be712',
    messagingSenderId: '460460887127',
    projectId: 'marzo-albert-2b',
    storageBucket: 'marzo-albert-2b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'TU_API_KEY',
    appId: 'TU_APP_ID',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID',
    projectId: 'TU_PROJECT_ID',
    storageBucket: 'TU_STORAGE_BUCKET',
    iosClientId: 'TU_IOS_CLIENT_ID',
    iosBundleId: 'TU_IOS_BUNDLE_ID',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'TU_API_KEY',
    appId: 'TU_APP_ID',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID',
    projectId: 'TU_PROJECT_ID',
    storageBucket: 'TU_STORAGE_BUCKET',
    iosClientId: 'TU_IOS_CLIENT_ID',
    iosBundleId: 'TU_IOS_BUNDLE_ID',
  );
}
