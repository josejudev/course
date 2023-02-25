import 'package:flutter/material.dart';
//import 'package:course/home.dart';
import 'package:course/login.dart';
import 'package:course/home.dart';
import 'package:course/singUp.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            routes: {
        'home': (context) => const WidgetHome(),
        'login': (context) => const WidgetLogin(),
        'singUp':(context) => const WidgetSingUp()
      },
      debugShowCheckedModeBanner: false, initialRoute:'home' ,
    );
  }
}