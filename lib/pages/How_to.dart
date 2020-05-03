import 'package:flutter/material.dart';

class How_to extends StatefulWidget {
  @override
  _How_toState createState() => _How_toState();
}

class _How_toState extends State<How_to> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Utilisation'),
          centerTitle: true,
          backgroundColor: Colors.green,

        ),

        body: Center(
          child: Text('How to use it'),
        )
    );
  }
}

