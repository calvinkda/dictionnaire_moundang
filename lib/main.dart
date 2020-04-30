import 'package:dictionnaire_moundang/pages/Home.dart';
import 'package:dictionnaire_moundang/pages/Splash.dart';
import 'package:dictionnaire_moundang/pages/share.dart';
import 'package:dictionnaire_moundang/pages/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages/about.dart';
import 'pages/drawer.dart';
import 'pages/share.dart';

void main() {
  runApp(MyApp());
}

// class Myapp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dictionnaire Moundang',
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/drawer': (context) => Drawers(),
        '/about': (context) => About(),
        '/share': (context) => Share(),
        '/home': (context) => Home(),
        '/splash_screen': (context) => SplashScreen(),
        //'/detail': (context) => Detail(),
        //'/research': (context) => reseach(),

      },
    );
  }
}


//class qui conditionne l'utilisation de la splash screen une seule fois




