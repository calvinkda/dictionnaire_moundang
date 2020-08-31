import 'package:flutter/material.dart';

class About extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    // c'est la classe qui  hétite du state de Home avec convection '_'
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('à propos de nous'),
          centerTitle: true,
          backgroundColor: Colors.green,

        ),

        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: Container(
              child:Card(

                child:SingleChildScrollView(
                  padding: EdgeInsets.all(3.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                    Text('Dictionnaire Moundang ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                   SizedBox(height: 15.0,),
                    Text('Découverte des Mots et allocutions ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                    ),
                  ),

                ],

                  ),
                ),

              )
          ),
        )
    );
  }

}
