
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_settings/card_settings.dart';

class detail extends StatelessWidget{
  static const routeName = '/detail';
  var mot;
  var description;
  var mot_fr;
  var description_fr;

  detail(this.mot,this.description, this.mot_fr, this.description_fr,);


  //detail(String mot, String mot_fr,String traduction, String traduction_fr,);
  @override
  Widget build(BuildContext context) {
    Widget myText2(BuildContext){
      return  ListTile(
        title: Text(
          '$description',
          textScaleFactor: 2.0,
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text("$description_fr",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87,
              //fontFamily: 'empire',

          ),),
      );
    }

    Widget myText(BuildContext){
      return  ListTile(
        title: Text(
          '$mot',
          textScaleFactor: 2.0,
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text("$mot_fr",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87

          ),),
      );
    }
    // TODO: implement build
    //final mots mot = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(mot),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body:Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            child:Card(
              child:Padding(
                padding: EdgeInsets.all(15.0),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    myText(BuildContext),
                    SizedBox(height: 20.0,),
                    myText2(BuildContext)
                  ],
                ),
              ),
              elevation: 7.0,
            )
        ),
      )
      );
  }
}
