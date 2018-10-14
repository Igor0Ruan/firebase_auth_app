import 'package:flutter/material.dart';
import 'package:firebase_auth/screens/Login/Login.dart';
import 'package:firebase_auth/routes.dart';

class FirebaseAuthApp extends StatefulWidget {
  @override
  _FirebaseAuthAppState createState() => _FirebaseAuthAppState();
}

class _FirebaseAuthAppState extends State<FirebaseAuthApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: FirebaseAuthAppRoutes().routes,
    );
  }
}
