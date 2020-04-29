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
import 'pages/share.dart';
import 'package:http/http.dart' as http;
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

// class Myapp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // l'applicatio qui doit etre retourné dans la fonction main
    return MaterialApp(
      title: 'Dictionnaire Moundang',
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/drawer': (context) => drawer(),
        '/about': (context) => about(),
        '/share': (context) => share(),
        '/home': (context) => MyApp(),
      },
    );
  }
}
/* ….. */

//class de la spalsh screen
class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new Home()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new OnBoardingPage()));
    }
  }

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 200), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Chargement...'),
      ),
    );
  }
}

// class home (acceuil de la page
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // la classe home qui vas uriliser le statefullwiget 'la  home elle mem'
    return _Home();
  }
}
var data;
class _Home extends State<Home> {
  Future<List<dynamic> > loadJsonData() async {

    //var JsonString= await rootBundle.loadString('assets/Dico_Moundang.json');https://api.npoint.io/9872ce006f23b005b47d https://www.npoint.io/docs/3fe657f143852d4c4924
      var url = 'https://api.npoint.io/3fe657f143852d4c4924';
      var JsonString = await http.get(url);
        data= jsonDecode(JsonString.body);
        return data;

  }
  @override
  void initState(){
    super.initState();
    this.loadJsonData() ;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // le retour de la class
    return Scaffold(
      backgroundColor: Colors.white,
      // la barre de dessus
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
      //le contenu de la page
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


// class de recherche
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
      // ignore: missing_return
      builder:(context,snapshot){
       if(snapshot.hasData){
          final suggestionList = query.isEmpty
              ? snapshot.data
              : snapshot.data.where((p)=>p.startWith(query)).toList();
         return  ListView.builder(
          itemBuilder: (context,index)=>ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => detail(
                      suggestionList[index]['mot'],
                      suggestionList[index]['mot_fr'],
                      suggestionList[index]['description'],
                      suggestionList[index]['description_fr']),
                ),
              );
            },
              leading: Icon( Icons.search),
             title: RichText(
                 text: TextSpan(
                   text:  suggestionList[index]['mot'].substring(0, query.length),
                   style: TextStyle(
                     color: Colors.black, fontWeight: FontWeight.bold,
                   ),
                   children: [
                     TextSpan(
                       text: suggestionList[index]['mot'].substring(query.length),
                       style: TextStyle(color:  Colors.grey)
                     )
                   ]
                 ),
                  ),
             subtitle:  RichText(
              text: TextSpan(
                  text:  suggestionList[index]['mot_fr'].substring(0, query.length),
                  style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: suggestionList[index]['mot_fr'].substring(query.length),
                        style: TextStyle(color:  Colors.blueGrey)
                    )
                  ]
              ),
            ),
            ),
          itemCount: suggestionList.length,
      );
       }
     }
    );

  }

}

//class de l'intro
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Acceuil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MyApp()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/ico.jpg', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Fractional shares",
          body:
          "Instead of having to buy an entire share, invest any amount you want.",
          image: Image.asset('assets/ico1.png', width: 350.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
          "Download the Stockpile app and master the market with our mini-lesson.",
          image: Image.asset('assets/icon.png', width: 350.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body:
          "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          image: Image.asset('assets/ico3.png', width: 350.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Another title page",
          body: "Another beautiful body text for this example onboarding",
          image: Image.asset('assets/ico4.jpg', width: 350.0),
          footer: RaisedButton(
            onPressed: () {
              introKey.currentState?.animateScroll(0);
            },
            child: const Text(
              'FooButton',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Title of last page",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on ", style: bodyStyle),
              Icon(Icons.edit),
              Text(" to edit a post", style: bodyStyle),
            ],
          ),
          image: Image.asset('assets/logo.jpg', width: 350.0),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}


