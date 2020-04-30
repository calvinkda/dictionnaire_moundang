import 'dart:convert';
import 'package:dictionnaire_moundang/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController filter = new TextEditingController();
  final url = 'https://api.npoint.io/9872ce006f23b005b47d';
  String searchText = "";
  List mot = new List();
  List data;
  List filteredmot = new List();
  Icon searchIcon = new Icon(Icons.search);
  Widget appBarTitle = new Text('Home');

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
      body: Container(
        child:searchText.isNotEmpty?buildList():myLiist()
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  Widget buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: appBarTitle,
      actions:[new IconButton(
        icon: searchIcon,
        onPressed: _searchPressed,
      ),]
    );
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
          onTap: () => print(filteredmot[index]['mot']),
        );
      },
    );
  }

  Widget myLiist() {
    return ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int i) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => Detail(
                            data[i]['mot'],
                            data[i]['mot_fr'],
                            data[i]['description_fr'],
                            data[i]['description'])));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width - 70,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '${data[i]['mot_fr']}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,
                            ),
                            Text(
                              '${data[i]['mot']}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text('${data[i]['description_fr']}'),
                      )
                    ]),
                  ),
                ),
              ),
            ));
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
              prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
        );
      } else {
        this.searchIcon = new Icon(Icons.search);
        this.appBarTitle = new Text('Home');
        filteredmot = mot;
        filter.clear();
      }
    });
  }

  void _getmot() async {
    final response = await http.get(Uri.encodeFull(url));
    List tempList = new List();
    tempList = jsonDecode(response.body);
    setState(() {
      mot = tempList;
      mot.shuffle();
      filteredmot = mot;
      data = mot;
    });
  }
}
