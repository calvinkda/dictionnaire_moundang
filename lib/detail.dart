import 'package:dictionnaire_moundang/main.dart';
import 'package:flutter/material.dart';


class detail extends StatelessWidget{
  static const routeName = '/detail';

  //detail(String mot, String mot_fr,String traduction, String traduction_fr,);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //final mots mot = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Center(
        child: Text('test2'),
      ),

    );
  }

}
