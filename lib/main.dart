import 'package:bringapp_admin_web_portal/authentication/login_screen.dart';
import 'package:bringapp_admin_web_portal/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//     options: FirebaseOptions(
//       apiKey: "AIzaSyDUZuKYClVTabVTlg1hWpKcEXOvgAla5YM",
//       appId: "com.example.bringapp_admin_web_portal",
//       messagingSenderId: "Messaging sender id here",
//       projectId: "bring-clone-app",
//     ),
      options:  FirebaseOptions(

        apiKey: "AIzaSyAp_wzowzjWjix8Ir7gdCSAsvE0AZ03QZk",

        authDomain: "foodapp-f1593.firebaseapp.com",

        projectId: "foodapp-f1593",

        storageBucket: "foodapp-f1593.appspot.com",

        messagingSenderId: "195456709602",

        appId: "1:195456709602:web:dd0a41f4bf711482a6bfbb"

      )


  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Web Portal',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: FirebaseAuth.instance.currentUser == null
          ? const LoginScreen()
          : const HomeScreen(),
    );
  }
}
