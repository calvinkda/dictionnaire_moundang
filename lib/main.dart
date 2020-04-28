import 'dart:convert';

//import 'package:search_app_bar/filter.dart';
//import 'package:search_app_bar/search_app_bar.dart';
//import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:dictionnaire_moundang/pages/fetch_data.dart';
import 'package:dictionnaire_moundang/pages/share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/services.dart'show rootBundle;
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'pages/detail.dart';
import 'pages/about.dart';
import 'pages/drawer.dart';
import 'pages/fetch_data.dart';
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
      title: 'Dictionnaire Moundang',
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
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // la classe home qui vas uriliser le statefullwiget 'la  home elle mem'
    return _Home();
  }
}

class _Home extends State<Home> {
  Future<FetchData> loadJsonData() async {

    //var JsonString= await rootBundle.loadString('assets/Dico_Moundang.json');https://api.npoint.io/9872ce006f23b005b47d https://www.npoint.io/docs/3fe657f143852d4c4924
      var url = 'https://api.npoint.io/3fe657f143852d4c4924';
      var JsonString = await http.get(url);
      return jsonDecode(JsonString.body);
  }
  @override
  void initState(){
    super.initState();
    this.loadJsonData() ;
  }

  //List data;
  //var data;
  //List data = List();
  /* List data;
  var isLoading = true;

   Future<List<String>> loadJsonData() async {
    https: //drive.google.com/file/d/1-ELirF_IGdVkfBy01pE3EQkUmUzAuhpn/view?usp=sharing
    /* setState(() {
      isLoading = true;
    });*/
    var url = 'https://api.npoint.io/9872ce006f23b005b47d';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      data = json.decode(response.body) ;
      //data = convert.jsonDecode(response.body);
      print(data);
      return data;

    } else {
      throw Exception('erreur de lecture du dictionnaire');

    }
  }*/

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
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: DataSearch());
            },
          )
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
                        'assets/logo.jpg',
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
      body: Container(
        child: FutureBuilder(
          future: loadJsonData(),
          builder: (BuildContext context, AsyncSnapshot snapshot,) {
            if(snapshot.data== null){
              return Container(
                child: Center(
                  child:  Text('Chargement en Cours...'),
                ),
              );
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        snapshot.data[index]['mot'][0],
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.green,
                    ),
                    title: Text(snapshot.data[index]['mot'],
                        style: TextStyle(
                          fontSize: 20.0,
                        )),
                    subtitle: Text(snapshot.data[index]['mot_fr'],
                        style: TextStyle(
                          fontSize: 15.0,
                        )),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => detail(
                              snapshot.data[index]['mot'],
                              snapshot.data[index]['mot_fr'],
                              snapshot.data[index]['description'],
                              snapshot.data[index]['description_fr']),
                        ),
                      );
                    },

//onTap: null,
                  );

                },
              );
            }

          },

      ),
    ),
    );
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

class DataSearch extends SearchDelegate<String>{
  //final datas = _Home().loadJsonData();
  @override
  List<Widget> buildActions(BuildContext context) {
    // action qui sera fait sur l'app barre
    return [
      IconButton(icon: (Icon(Icons.clear)),  onPressed: (){
        query="";
      }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // l'icon de leading qui sera sur l'app barre
    return IconButton(icon: (
            AnimatedIcon(icon: AnimatedIcons.menu_arrow,
                progress: transitionAnimation)),
            onPressed: (){
                close(context, null);
            });
  }

  @override
  Widget buildResults(BuildContext context) {
    // resultat qui sera donné à la fin de la recherche
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // ce que l'on veut affiché lorsque l'utilisateur saisi un mot ou lettre
    //var mydata= [];
       //list = mydata.then((f));
    //final datas = _Home().data;
    return FutureBuilder(
      future: _Home().loadJsonData(),
      builder:(context,snapshot){
       if(snapshot.hasData){
         return  ListView.builder(
          itemBuilder: (context,index)=>ListTile(
              leading: Icon( Icons.watch_later),
             title: Text(snapshot.data[index]['mot'] ),
            ),
       itemCount: snapshot.data.length,
      );
       }
     }
    );

  }

}