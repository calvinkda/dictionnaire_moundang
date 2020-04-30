
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget{
    String descriptions_fr;
    String descriptions;
    String mot;
    String mot_fr;
    Detail(this.mot,this.mot_fr,this.descriptions_fr,this.descriptions);
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
          child: Container(
            child:ListTile(
              leading:Text(mot,style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.25),
              title:Text(mot_fr,style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.25),
              subtitle:Text(descriptions_fr)
            )
          ),
        )
    );
  }
}
