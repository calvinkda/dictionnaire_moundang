import 'package:flutter/material.dart';

class about extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    // c'est la classe qui  hétite du state de Home avec convection '_'
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('à propos de nous'),
          centerTitle: true,
          backgroundColor: Colors.green,

        ),

        body: Center(
          child: Text('à propos de l application'),
        )
    );
  }

}

/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataSearch extends StatefulWidget {

  @override
  _DataSearchState createState() => new _DataSearchState();
}

class _DataSearchState extends State<DataSearch> {

  final TextEditingController _filter = new TextEditingController();
  final url = 'https://api.npoint.io/9872ce006f23b005b47d';
  String _searchText = "";
  List mot = new List();
  List filteredmot = new List();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text( 'Search Example' );

  _DataSearchState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredmot = mot;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

  @override
  void initState() {
    this._getmot();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      body: Container(
        child: _buildList(),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: _appBarTitle,
      leading: new IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,

      ),
    );
  }

  Widget _buildList() {
    if (!(_searchText.isEmpty)) {
      List tempList = new List();
      for (int i = 0; i < filteredmot.length; i++) {
        if (filteredmot[i]['mot'].toLowerCase().contains(_searchText.toLowerCase())) {
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

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
            prefixIcon: new Icon(Icons.search),
            hintText: 'Search...'
          ),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text( 'Search Example' );
        filteredmot = mot;
        _filter.clear();
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
    });
  }
}
 */