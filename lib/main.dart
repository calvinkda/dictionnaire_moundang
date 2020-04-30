
import 'package:dictionnaire_moundang/Home.dart';
import 'package:dictionnaire_moundang/pages/Research.dart';
import 'package:dictionnaire_moundang/pages/Splash.dart';
import 'package:dictionnaire_moundang/pages/share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'pages/detail.dart';
import 'pages/about.dart';
import 'pages/drawer.dart';
import 'pages/share.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        '/drawer': (context) => drawer(),
        '/about': (context) => about(),
        '/share': (context) => share(),
        '/home': (context) => Home(),
        '/splash_screen': (context) => splash_screen(),
        '/detail': (context) => detail(),
        '/research': (context) => reseach(),

      },
    );
  }
}


//class qui conditionne l'utilisation de la splash screen une seule fois
class Splash extends StatefulWidget {
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => Home()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => splash_screen()));
    }
  }

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 200), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Chargement...'),
      ),
    );
  }
}



