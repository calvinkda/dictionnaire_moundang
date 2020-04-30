import 'package:dictionnaire_moundang/pages/about.dart';
import 'package:dictionnaire_moundang/pages/share.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class drawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: Column(

          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.green ,
              child: Column(

                children: <Widget>[

                  Container(

                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,

                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green[500],

                    ),
                    child:Image.asset(
                      'assets/icone/icone.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Africa Language' ,
                    style:  TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text('Moundang Version' ,
                    style:  TextStyle(
                      color: Colors.white,
                    ),
                  ),

                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings_input_antenna),
              title: Text('à propos',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/about');
              }

            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Partager',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/share');
              }

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Contibruer',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              onTap: _url,

            ),
            Text('Version 1.1',
              textAlign: TextAlign.end,
            )
          ],

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

