import 'package:flutter/material.dart';

class Share extends StatefulWidget {
  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
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

