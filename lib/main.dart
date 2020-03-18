import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'detail.dart';
import 'about.dart';
//import 'drawer.dart';

void main() {
  runApp(MyApp());
}
/* ….. */


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // l'applicatio qui doit etre retourné dans la fonction main
    return MaterialApp(
      title : 'Dictionnaire Moundang',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );

  }

}


class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // la classe home qui vas uriliser le statefullwiget 'la  home elle mem'
    return _Home();
  }

}
class _Home extends State<Home>{

  //lecture du fichier json depuis le dossier assets
  List data;

  Future<String> loadJsonData() async{
    var JsonText= await rootBundle.loadString('assets/Dico_Moundang.json');
    setState(() {
      data=json.decode(JsonText);
    });
    print(JsonText);
    return (JsonText);


  }

  //fonction d'appel du fichier Json
  @override
  void initState(){
    this.loadJsonData();
  }


  @override
  Widget build(BuildContext context) {
    // c'est la classe qui  hétite du state de Home avec convection '_'
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dictionnaire Moundang'),
        centerTitle: true,
      ),
      // le menu latteral le details est dans le fichier drawer
      drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Theme.of(context).primaryColor ,
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
                        image: DecorationImage(
                          image: AssetImage('assets/logo moi.jpg'),
                          fit: BoxFit.fill
                        ),

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
                title: Text('Suivez nous',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: about,

              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Partager',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: null,

              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Contibruer',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: null,

              ),
              Text('Version 1.1',
                textAlign: TextAlign.end,
              )
            ],

          )
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(child: Text(data[index]['mot'][0]),),
                  title: Text(data[index]['mot']),
                  subtitle: Text(data[index]['mot_fr']),
                    onTap:null,
                  //onTap: null,
                )
                
              ],
            ),

            );
        },


      ),
            
      );

  }

// la fonction de debug
  void debug(){
    setState(() {
      print('ça marche');
    } );
  }
  //fontion du snack bat
  //void snack(){
    //SnackBar snackBar = SnackBar(
      //content: Text('ma snack bar'),
      //duration: Duration(seconds: 3),
    //);
    //Scaffold.of(context).showSnackBar(snackBar); //cette paties est utiliser au cas ou la snack est dans le scaffold
  //}
// fonction alert


  // navigation vers la page de details
  //void newpage(){
    //Navigator.push(context,
        //MaterialPageRoute(builder: (BuildContext context){
         // return detail('ce est la nouvelle page');
        //}
       // )
    //);
  //}

  // test de navigation vers la page de details

  //void newpage(){

    //Navigator.push(context,
        //MaterialPageRoute(builder: (BuildContext context,
           // ){
          //return Text('merde');

        //}
        //)
    //);
  //}

  // navigation vers la page de details

  void about(){
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context){
          return Text('page aide') ;
        }
        )
    );

  }
}
