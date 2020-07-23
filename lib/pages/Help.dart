import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contribution / Gbah jolle '),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Container(
                child:Card(

                  child:SingleChildScrollView(
                    padding: EdgeInsets.all(15.0),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('pour tout aide ou contibution contacter le ou koudanbe@gmail.com'),
                        SizedBox(height: 20.0,),
                        Text('teste du text 2'),
                        Text('Vous pouvez contribuer en proposant des modifications,amélioration ou ajout d un mot'),
                        Text('cliquer sur le boutton ci dessous'),
                        RaisedButton(
                            color: Colors.green,
                            elevation:5.0,
                            splashColor: Colors.white,
                            child: new Text("Contribuer"),
                            onPressed: _url),
                        Text('nos autres projets'),
                      ],
                    ),
                  ),
                  elevation: 3.0,
                )
            ),
          ),
        )
    );
  }
}


_url() async {
  const url = 'https://koudanbe.herokuapp.com/contribution/';
  if (await canLaunch(url)) {
    launch(url);
  } else {
    throw 'Could not launch $url';
  }
}