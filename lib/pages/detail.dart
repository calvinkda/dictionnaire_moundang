
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detail extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('detail'),
          centerTitle: true,
          backgroundColor: Colors.green,

        ),

        body: Center(
          child: Text('detail'),
        )
    );
  }
}
