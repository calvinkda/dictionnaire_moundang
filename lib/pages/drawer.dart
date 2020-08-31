import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';


class Drawers extends StatelessWidget {
  Future<void> sharing() async {
    await FlutterShare.share(
        title: 'Dictionnaire Moundang',
        text: 'Télécharge le Dictionnaire Moundang et découvre des mots et allocutions',
        linkUrl: 'https://koudanbe.herokuapp.com/',
        //chooserTitle: 'Example Chooser Title'
    );
  }
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

                    width: 110,
                    height: 150,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,

                    ),
                    //decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      //color: Colors.green[500],

                    //),
                    child:Image.asset('assets/icone/icone1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('African\'s Languages' ,
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
                leading: Icon(Icons.verified_user),
                title: Text('Utilisation',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/How_to');
                }

            ),
            ListTile(
              leading: Icon(Icons.account_box),
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
                sharing();
              }

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Contibruer',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              onTap: (){
                Navigator.of(context).pushNamed('/help');
              },

            ),
            Text('Version Bêta',
              textAlign: TextAlign.end,
            )
          ],

        )

    );
  }



}





