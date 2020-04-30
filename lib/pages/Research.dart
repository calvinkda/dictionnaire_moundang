import 'package:dictionnaire_moundang/pages/Home.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
 
  List data;
  DataSearch(this.data);
  
  @override
  List<Widget> buildActions(BuildContext context) {
    print(data);
    // TODO: implement buildActions
    return [
      IconButton(
          icon: (Icon(Icons.clear)),
          onPressed: () {
            query = "";
          })
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: (AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation)),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var data = 
    //print(mydata.length);
    // TODO: implement buildSuggestions
     ListView.builder(
        itemBuilder: (context,index)=>ListTile(
              leading: Icon( Icons.watch_later),
             // title: Text(data[index]['mot']),
            ),
       itemCount:4,
      );
  }
}
