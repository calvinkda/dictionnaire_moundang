import 'package:flutter/material.dart';

class About extends StatelessWidget{
  static const routeName = '/about';
  detail(String title){
    this.title = title;
  }

  String title;

  @override
  Widget build(BuildContext context) {
    // c'est la classe qui  hétite du state de Home avec convection '_'
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,

        ),

        body: Center(
          child: Text('à propos de l application'),
        )
    );
  }

}