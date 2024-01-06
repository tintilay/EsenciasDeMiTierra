import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBm2EKrKqMXPSxUl1aOYOqrYHXZFK9QObY",
            authDomain: "bd-esenciasdemitierra.firebaseapp.com",
            projectId: "bd-esenciasdemitierra",
            storageBucket: "bd-esenciasdemitierra.appspot.com",
            messagingSenderId: "165123254036",
            appId: "1:165123254036:web:2f914175928915829dc401",
            measurementId: "G-Y6S9BG1H95"));
  } else {
    await Firebase.initializeApp();
  }
}
