import 'package:flutter/material.dart';

class How_to extends StatefulWidget {
  @override
  _How_toState createState() => _How_toState();
}

class _How_toState extends State<How_to> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Utilisation'),
          centerTitle: true,
          backgroundColor: Colors.green,

        ),

        body: Padding(padding: EdgeInsets.all(20.0),

          child: Container(
            child: Card(
              child: SingleChildScrollView(

                padding: EdgeInsets.all(15.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Text('Comment lire les mots: Au debut de chaque mot, une suite de mots permettent de connaitre son type et son utilisation ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          //fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                    ),
                    SizedBox(height: 15.0,),
                    Text('Ɗii camcam: les noms',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    RichText(
                    text: TextSpan(
                      // set the default style for the children TextSpans
                        style: Theme.of(context).textTheme.body1,
                        children: [
                          TextSpan(
                            text: 'ɗ   tɗ. ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                              )
                          ),
                          TextSpan(
                              text: ' ɗii. tətii: ',
                              style: TextStyle(
                                  //color: Colors.blue
                              )
                          ),
                          TextSpan(
                            text: ' Nom',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ]
                    )
                ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ptgɗ. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' patgwa ɗii: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Prénom',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗfmw. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' ɗii fan ma wore: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Masculin',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗfmw. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' ɗii fan ma winni: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Féminin',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗfmt. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' ɗii fan ma tamme: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Féminin',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗd,	ɗn,	ɗkp:	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' ɗii dəfuu, ɗii nəə, ɗii kpuu. ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),

                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗj, ɗfɗ, ɗfɓr.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' ɗii juu, ɗii faɓalle, ɗii fan ɓeare.',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),

                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗfv,  fp. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' ɗii fan vano,	  ɗii fan paare. ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),

                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'tk. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' ɗii tahki: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Nom composé',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    SizedBox(height: 15.0,),
                    //seconde partie
                    Text('Ɓə mai mo na ɗii ta: les pronoms et adjectifs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗd. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Ɗii dəɓɓi: Me, mo, na, ru, ko, ra, we. ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Pronom',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗmcd.f. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Ɗii ma cuu dəɓɓi: Ame, ako',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Pronom personnel',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'd. 	  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Dəɓɓi:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Personne',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'dv. 	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Dəɓ vaŋno, fan vaŋno:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Singulier',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ptvd. 	ptgd. 	ptsd.  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Patə vano di,Patə gwa di,Patə sai dəɓɓi: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' 1ère, 2ème, 3ème personne du singulier',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'zp.   ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Za paare: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Pluriel',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ptvzp.   ptgzp.  ptszp.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Patə vano za paare, Patə gwa za pãare, Patə sai zana:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' 1ère, 2ème, 3ème personne du pluriel',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗmnf.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Ɗii ma ne fii :',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Pronom intérogatif',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    SizedBox(height: 15.0,),
                    Text('ma cuu di, fanne, ne fahlii camcam: Les adjectifs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'fmcd.f.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Fan ma cuu dəɓɓi/fanne:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Adjectif',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmcd.f.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Ɓə  ma cuu dəɓɓi/fanne:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Adjectif démonstratif',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmckd.f.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Ɓə  ma cuu kpak dəɓɓi/fanne:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Adjectif qualificatif',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmcfd.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Ɓə  ma cuu fan dəɓɓi:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Adjectif posséssif',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmcfvv.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: ' Ɓə  ma cuu fan vaŋno vaŋno: maino, manyeeno.	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmkpd.f.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə kee pãa dəfuu/fanne: 1, 2, 3...',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Adjectif numéral',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓbnt.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə  bai nəə tətəlli:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Adjectif indéfini',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmsɓ.	 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə  ma swaa ɓə:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Adverbe',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'f, ff.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Fii, fifii:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: '  Intérogation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓff.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'ɓə fifii:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Question',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'fɓnŋf.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Faa ɓə ne ŋwəə fanne: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Conjugaison',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓll.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Bə lilii,	ɓə lələŋ: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Supposition',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmzcd.	 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Ɓə  ma zoo cee dəɓɓi:	 ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Exclamation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓbiz.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Ɓə  bai in zahe:	 ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: 'Indéterminer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmccd.f.	 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə  ma cuu cok dəɓɓi/fanne: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: 'Préposition',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmtf.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə  ma tai fanne: dəə ne gwii: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Conjonction de coordination',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmcds.	 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə ma cuu dəɓ sə:		ye, yea, yo: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Verbe d’état',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓtv.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə tə vaŋno:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Synonyme',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmtjb.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə  mai mo tə jojoŋ ba:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Présent',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmjk.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə mai mo joŋ kal ɓe:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Passé',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmtgjb.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə mai mo tə ga jojoŋ ba:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Futur',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmfp.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə ma faa pəswahe:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Impératif',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmgbjnjf.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə ma gbah jol ne joŋ fanne:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Auxilliaire',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmza.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə ma zyii a’a:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Négation (non)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓmzo.	  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə ma zyii oho:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Affirmation (oui)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɗmɓnfja.y.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɗii ma ɓyaŋ ne fan joŋ/yee ahe:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Onomatopée',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'lɓ.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Lii ɓə: təgbana:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Comparaison.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ttɓ.  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə Tətəŋ ɗii ma cuu pa joŋ fanne, yea ne fanne, ’yah fanne. Təgbana: Pacwakke, pabame, payaŋ...',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Préfixe',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ttɓ.	',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Ɓə kan pə cok ɗii dəɓ pə tətəŋ : amo, ako.',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: '',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'j.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Jeertə.  Pə lii ne pəlaŋne, pəlli ne biŋ:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Contraire',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'tfznŋa. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Tan faa zah ne ŋw əə ahe:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Grammaire.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'jf (fj).	   ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	TJoŋ fanne (fan joŋni):	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Verbe',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'zmmf.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Zah Mundaŋ moo faani:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Expression, dicton.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓt.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Ɓə ɓətəroo:	',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Proverbe',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓkk.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Ɓə kikiŋ:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Enigme',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'zl.	 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Zahlii:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Ironie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ɓs.		',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Ɓə syakke:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Blague',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'ZZ.  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: 'Zah zyelle: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Raillerie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'fv.  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Fan vaŋno: ',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Un, unité',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'zpp-fpp.   ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	Zan/fan pəpãare:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Pluriel',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                          // set the default style for the children TextSpans
                            style: Theme.of(context).textTheme.body1,
                            children: [
                              TextSpan(
                                  text: 'zzk.Zah  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '	zan ki:',
                                  style: TextStyle(
                                    //color: Colors.blue
                                  )
                              ),
                              TextSpan(
                                  text: ' Langue étrangère',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ]
                        )
                    ),

                    // troisième partie
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

