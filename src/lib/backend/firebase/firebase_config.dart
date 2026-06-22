import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAxr6D3Q8oRizIKXd4buIp0y96WVatzqyo",
            authDomain: "unipets-e796e.firebaseapp.com",
            projectId: "unipets-e796e",
            storageBucket: "unipets-e796e.firebasestorage.app",
            messagingSenderId: "784736587875",
            appId: "1:784736587875:web:9796782145426eafefa856",
            measurementId: "G-VXK8FSH20G"));
  } else {
    await Firebase.initializeApp();
  }
}
