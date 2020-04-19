import 'package:flutter/material.dart';

class share extends StatefulWidget {
  @override
  _shareState createState() => _shareState();
}

class _shareState extends State<share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Patager l'application"),
          backgroundColor: Colors.green,
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
                     Text("calvin k"),
                      SizedBox(height: 20.0,),
                      Text("calvin k"),
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
