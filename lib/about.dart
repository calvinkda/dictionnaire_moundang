import 'package:flutter/material.dart';

class About extends StatelessWidget{
  static const routeName = '/about';


  @override
  Widget build(BuildContext context) {
    // c'est la classe qui  hétite du state de Home avec convection '_'
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('à propos de nous'),
          centerTitle: true,

        ),

        body: Center(
          child: Text('à propos de l application'),
        )
    );
  }

}