
import 'package:flutter/material.dart';



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
    // TODO: implement build
    //final mots mot = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(mot),
      ),
      body: Center(
        child: Text(description_fr),
      ),

    );
  }

}
