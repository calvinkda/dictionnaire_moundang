import 'package:dictionnaire_moundang/pages/homeSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
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
      MaterialPageRoute(builder: (_) => Home()),
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
          title: "Bienvenue dans African's Languages",
          body:
          "Une nouvelle méthode d'apprentissage des langues Africaines",
          image: Image.asset('assets/ico1.png',
              fit: BoxFit.contain,
              width: 250.0,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Version Moundang",
          body:
          "Dévouvrez les mots et allocutions Moundang.",
          image: Image.asset('assets/icon.png',
              fit: BoxFit.contain,
              width: 250.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Comment ça marche",
          body:
          "decouvrer une liste de mots et allocutions avec quelques unes de leurs utlisations et des correspondaces en Fançais",
          image: Image.asset('assets/icone/intro.gif',
              fit: BoxFit.contain,
              width: 250.0
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Faites des recherches",
          body: "Que ce soit en français ou en Moundang",
          image: Image.asset('assets/icone/intro2.gif',
              fit: BoxFit.contain,
              width: 250.0),
          //footer: RaisedButton(
           // onPressed: () {
             // introKey.currentState?.animateScroll(0);
            //},
            ////child: const Text(
             // 'decouvrir',
              //style: TextStyle(color: Colors.white),
            //),
            //color: Colors.lightBlue,
            //shape: RoundedRectangleBorder(
             // borderRadius: BorderRadius.circular(8.0),
            //),
          //),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Quelques astuces ci dessus",
          body: "Cliquer sur sur menu à gauche ensuite sur utilisation",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Néccesite une connexion internet", style: bodyStyle),
              Icon(Icons.wifi),
            ],
          ),
          image: Image.asset('assets/ico4.jpg',
              fit: BoxFit.contain,
              width: 250.0),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Passer'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Fin', style: TextStyle(fontWeight: FontWeight.w600)),
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

