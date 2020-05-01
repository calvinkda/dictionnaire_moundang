
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
          title: Text(mot,style: TextStyle(fontWeight:FontWeight.bold),textScaleFactor: 1.33),
          centerTitle: true,
          backgroundColor: Colors.green,

        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children:<Widget>[
                   Card(
                      elevation: 7.0,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ListTile(
                            title:Padding(
                              padding: const EdgeInsets.only(bottom:10.0),
                              child: Text(
                                    mot,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                            ),
                            subtitle:Text(descriptions, style: TextStyle(color:Colors.black),textScaleFactor: 1.5,)
                          ),
                          SizedBox(height:30.0),
                          ListTile(
                            title:Padding(
                              padding: const EdgeInsets.only(bottom:10.0),
                              child: Text(
                                    mot_fr,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                            ),
                            subtitle:Text(descriptions_fr, style: TextStyle(color:Colors.black),textScaleFactor: 1.5,)
                          ),
                        ],
                      )
                    ),
              ]
            ),
          ),
        )
    );
  }
}
