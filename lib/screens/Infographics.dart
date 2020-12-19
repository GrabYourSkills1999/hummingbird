import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Drawer.dart';
import '../Items.dart';
import '../search.dart';

class Infographics extends StatefulWidget {
  @override
  _InfographicsState createState() => _InfographicsState();
}

class _InfographicsState extends State<Infographics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Colors.black,
        title: Center(child: new Text("Weather Report")),
        actions: <Widget>[

          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: ArticleSearch());
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
        ],
      ),
    );
  }
}
