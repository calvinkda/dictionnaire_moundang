
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class Detail extends StatelessWidget{
    String descriptions_fr;
    String descriptions;
    String mot;
    String mot_fr;
    Detail(this.mot,this.mot_fr,this.descriptions_fr,this.descriptions);
    //detail(String mot, String mot_fr,String traduction, String traduction_fr,);
    @override
    Widget build(BuildContext context) {
      Future<void> ShareText() async {
        await FlutterShare.share(
          title: 'Decouvre ce mot avec moi',
          text: mot +' = '+ mot_fr ,
          linkUrl: 'Télécharge le Dictionnaire Moundang et découvre dautre mots sur :  https://koudanbe.herokuapp.com/',
          chooserTitle: mot,
        );
      }

      Widget myText2(BuildContext){
        return  ListTile(
          title: Text(
            '$mot_fr',
            textScaleFactor: 2.0,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                    fontFamily:'cadela' ,
            ),
          ),
          subtitle: Text("$descriptions_fr",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87,
              fontFamily:'cadela' ,
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
                fontWeight: FontWeight.bold,
              fontFamily: 'charisB',
            ),
          ),
          subtitle: Text("$descriptions",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
              fontFamily:'charis' ,

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
           actions: <Widget>[
             IconButton(icon: Icon(Icons.share), onPressed: ShareText)
           ],
           // leading: GestureDetector(
             // onTap: ShareText,
             // child: Icon(Icons.share),
            //)
          ),

          body:Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
                child:Card(

                  child:SingleChildScrollView(
                    padding: EdgeInsets.all(3.0),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        myText(BuildContext),
                        SizedBox(height: 20.0,),
                        myText2(BuildContext)
                      ],
                    ),
                  ),
                  elevation: 3.0,
                )
            ),
          )
      );
    }
}
