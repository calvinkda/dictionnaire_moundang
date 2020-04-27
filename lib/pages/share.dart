import 'package:flutter/material.dart';

class share extends StatefulWidget {
  @override
  _shareState createState() => _shareState();
}

class _shareState extends State<share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('à propos de nous'),
          centerTitle: true,
          backgroundColor: Colors.green,

        ),

        body: Center(
          child: Text('bientôt'),
        )
    );
  }
}

