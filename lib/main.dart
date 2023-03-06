import 'package:flutter/material.dart';
//import 'package:course/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:course/home.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Curso',
      debugShowCheckedModeBanner: false,
      home: WidgetHome(),
    );
  }
}
