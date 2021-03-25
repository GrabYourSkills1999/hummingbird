import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Drawer.dart';
import '../Items.dart';
import '../search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawers(),
      appBar: AppBar(
        elevation: 4.0,
        title: Center(child: new Text("Weather Report")),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.filter_alt_rounded),
            onPressed: () {},
          ),
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
