import 'dart:convert';

import 'package:dictionnaire_moundang/pages/share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/services.dart'show rootBundle;
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'pages/detail.dart';
import 'pages/about.dart';
import 'pages/drawer.dart';
import 'pages/share.dart';
import 'package:http/http.dart' as http;



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

      routes: {
        '/drawer': (context) => drawer(),
        '/about': (context) => about(),
        '/share': (context) => share(),
        '/home': (context) => MyApp(),



      },
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
  /* ….. List data;
  Future<String> loadJsonData() async{
    try {
    var JsonString= await rootBundle.loadString('assets/Dico_Moundang.json');
    setState(() {
      data=json.decode(JsonString);
    });
    //print(JsonString);
    return (JsonString);
    }
    catch (e) {
      return "erreur de lecture du fichier JSON";
    }

  }

  //fonction d'appel du fichier Json
  @override
  void initState(){
    this.loadJsonData();
  }*/

  //List data;
  //var data;
  List data = List();
  var isLoading = false;


  Future<String> loadJsonData()  async {
  setState(() {
  isLoading = true;
  });
  https://drive.google.com/file/d/1-ELirF_IGdVkfBy01pE3EQkUmUzAuhpn/view?usp=sharing

  var url = 'https://drive.google.com/file/d/1-ELirF_IGdVkfBy01pE3EQkUmUzAuhpn';
  var response =  await http.get(url);
  if (response.statusCode == 200) {
  data = json.decode(response.body) ;
  //print(data);
  isLoading = false;
  } else {
  throw Exception('erreur de lecture du dictionnaire');
  }
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dictionnaire Moundang'),
        centerTitle: true,
        backgroundColor: Colors.green,
        //leading: ,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null, color: Colors.white,)
    ],
          //},
        ),

      // le menu latteral le details est dans le fichier drawer
      drawer: drawer(),
      /* Drawer(
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

                      ),
                      child:Image.asset(
                        'assets/logo moi.jpg',
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
                title: Text('Suivez nous',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                //onTap: about,

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
      ),*/
      body: isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          :ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Column(
              children: <Widget>[

                ListTile(
                  leading: CircleAvatar(child: Text(data[index]['mot'][0],
                    style:TextStyle(
                      color: Colors.white
                    ) ,

                  ),
                  backgroundColor: Colors.green,
                  ),
                  title: Text(data[index]['mot'],
                  style: TextStyle(
                    fontSize: 20.0,
                  )
                  ),
                  subtitle: Text(data[index]['mot_fr'],
                      style: TextStyle(
                        fontSize: 15.0,
                      )
                  ),
                  //onTap:detail_page(data[index].mot,data[index].mot_fr,data[index].description,data[index].description_fr),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => detail(data[index]['mot'], data[index]['mot_fr'], data[index]['description'], data[index]['description_fr']),
                      ),
                    );
                  },

                  //onTap: null,
                )

              ],
            ),

          );
        },


      ),

    );
    return CircularProgressIndicator();
  }

}


// la fonction de debug
/* void debug(){
    setState(() {
      print('ça marche');
    } );
  }*/
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
  /* ….. detail_page(mot,mot_fr,description,description_fr,){

    Navigator.push(context,
        MaterialPageRoute(
            builder: (BuildContext context) => detail(mot,mot_fr,description,description_fr)
        )
    );
  } */

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

  //void about(){
    //Navigator.push(context,
      //  MaterialPageRoute(builder: (BuildContext context){
        //  return Text('page aide') ;
        //}
        //)
    //);

  //}

