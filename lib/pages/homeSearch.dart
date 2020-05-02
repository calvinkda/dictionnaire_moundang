import 'dart:convert';
import 'package:dictionnaire_moundang/pages/detail.dart';
import 'package:dictionnaire_moundang/pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController filter = new TextEditingController();
  final url = 'https://api.npoint.io/3fe657f143852d4c4924';
  String searchText = "";
  List mot = new List();
  List data;
  List filteredmot = new List();
  Icon searchIcon = new Icon(Icons.search);
  Widget appBarTitle = new Text('Dictionnaire Moundang');

  _HomeState() {
    filter.addListener(() {
      if (filter.text.isEmpty) {
        setState(() {
          searchText = "";
          filteredmot = mot;
        });
      } else {
        setState(() {
          searchText = filter.text;
        });
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildBar(context),
      body: searchText.isNotEmpty ? buildList() : myLiist(),
      drawer: Drawers(),
      resizeToAvoidBottomPadding: false,
    );
  }

  @override
  Widget buildBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: true, title: appBarTitle, actions: [
      new IconButton(
        icon: searchIcon,
        onPressed: _searchPressed,
      ),
    ]);
  }

  @override
  void initState() {
    this._getmot();
    super.initState();
  }

  void _searchPressed() {
    setState(() {
      if (this.searchIcon.icon == Icons.search) {
        this.searchIcon = new Icon(Icons.close);
        this.appBarTitle = new TextField(
          controller: filter,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search),
              hintText: 'Chercher / kyeb ...'),
        );
      } else {
        this.searchIcon = new Icon(Icons.search);
        this.appBarTitle = new Text('Dictionnaire Moundang');
        filteredmot = mot;
        filter.clear();
      }
    });
  }

  Widget buildList() {
    if (!(searchText.isEmpty)) {
      List tempList = new List();
      for (int i = 0; i < filteredmot.length; i++) {
        if (filteredmot[i]['mot']
            .toLowerCase()
            .contains(searchText.toLowerCase())) {
          tempList.add(filteredmot[i]);
        }
      }
      filteredmot = tempList;
    }
    return ListView.builder(
      itemCount: mot == null ? 0 : filteredmot.length,
      itemBuilder: (BuildContext context, int index) {
        return new ListTile(
          title: Text(filteredmot[index]['mot']),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => Detail(
                    filteredmot[index]['mot'],
                    filteredmot[index]['mot_fr'],
                    filteredmot[index]['description_fr'],
                    filteredmot[index]['description'])));
          },
        );
      },
    );
  }

   _getmot() async {
    final response = await http.get(Uri.encodeFull(url), headers: {"ACCEPT" : "Application/json"});
    List tempList = new List();
    tempList = jsonDecode(response.body);
    setState(() {
      
      mot = tempList;
      mot.shuffle();
      filteredmot = mot;
      data = mot;
    });
  }
Widget CircularPros(){
  return Center(child: CircularProgressIndicator());
}
  //Drawer:drawer();
  Widget myLiist() {
    return ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int i) => data==null?CircularPros:Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 10,
                child: Card(
                    elevation: 7.0,
                    child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => Detail(
                                  data[i]['mot'],
                                  data[i]['mot_fr'],
                                  data[i]['description_fr'],
                                  data[i]['description'])));
                        },
                        leading: new CircleAvatar(
                            foregroundColor: Theme.of(context).primaryColor,
                            backgroundColor: Colors.green,
                            child: Text(
                              '${data[i]['mot'][0]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                              textScaleFactor: 2.0,
                            )),
                        title:Text(
                              '${data[i]['mot']}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child:Text(
                              '${data[i]['mot_fr']}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                        )
                      )
                    ),
              )
            )
          );
  }

}
