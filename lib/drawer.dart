import 'package:flutter/material.dart';

class drawer extends StatefulWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                    //image: DecorationImage(),
                    
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


    );
  }

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return null;
  }
}

