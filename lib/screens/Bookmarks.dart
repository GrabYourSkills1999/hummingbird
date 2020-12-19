import 'package:flutter/material.dart';

import '../constants.dart';
class Bookmarks extends StatefulWidget {
  @override
  _BookmarksState createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Weather Report",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: Fontfamily,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
           Container(
             child: Text("Bookmark your favourite articles"),
           ),
            Container(
              child: Icon(Icons.book),
            ),
          ],
        ),
      ),
    );
  }
}
