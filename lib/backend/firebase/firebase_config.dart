import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDGkHmn6BGrtIRH3SShFwVxbhuNvrZ8HCw",
            authDomain: "urbanfirewatch.firebaseapp.com",
            projectId: "urbanfirewatch",
            storageBucket: "urbanfirewatch.firebasestorage.app",
            messagingSenderId: "841886133505",
            appId: "1:841886133505:web:2c1f8cf8d21deb3259ff00",
            measurementId: "G-TGEGBWLKZD"));
  } else {
    await Firebase.initializeApp();
  }
}
