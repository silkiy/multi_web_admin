// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multi_web_admin/view/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: kIsWeb || Platform.isAndroid
        ? FirebaseOptions(
            apiKey: "AIzaSyADnWRbmPD5xbjnfcPI7gGsv_KclQR3r90",
            appId: "1:170836489092:web:d451c98c93c30185ef23d1",
            messagingSenderId: "170836489092",
            projectId: "multi-vendor-app-98dd0",
            storageBucket: "multi-vendor-app-98dd0.appspot.com")
        : null,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MainScreen());
  }
}
