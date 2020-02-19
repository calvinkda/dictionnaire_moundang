import 'package:flutter/material.dart';

class detail extends StatelessWidget{
  static const routeName = '/detail';
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
          child: Text('page 2'),
        )
    );
  }

}