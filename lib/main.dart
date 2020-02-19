import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail.dart';
//import 'drawer.dart';

void main() {
  runApp(MyApp());
}


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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                       // image: DecorationImage(),

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
                leading: Icon(Icons.person),
                title: Text('Suivez nous',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: null,

              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Suivez nous',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: null,

              ),
            ],

          )
      ),
      body: Center(
        child: RaisedButton(
          onPressed: newpage,
          child: Text('page'),
          color: Colors.teal,
          textColor: Colors.white ,
        ),
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
  void snack(){
    SnackBar snackBar = SnackBar(
      content: Text('ma snack bar'),
      //duration: Duration(seconds: 3),
    );
    Scaffold.of(context).showSnackBar(snackBar); //cette paties est utiliser au cas ou la snack est dans le scaffold
  }
// fonction alert

  // navigation dans les page

  void newpage(){
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context){
          return detail('ce est la nouvelle page');
        }
        )
    );
  }

}