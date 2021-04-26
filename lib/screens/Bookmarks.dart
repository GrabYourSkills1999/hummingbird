import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/screens/bottomnav.dart';
import '../Drawer.dart';
import '../constants.dart';
import '../search.dart';

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
          elevation: 4.0,
          backgroundColor: Colors.black,
          title: Center(child: new Text("News")),
          actions: <Widget>[

            new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: ArticleSearch());
              },
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
           Center(
             child: Container(
               child: Text("Bookmark your favourite articles",
                 style: TextStyle(
                   fontSize: 20,
                   fontFamily: Fontfamily,
                 ),
               ),
             ),
           ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: Image(image: AssetImage('image/bookmark.png'),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => BottomBar()),
                    );

                  },
                  child: Text("Start Exploring",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontFamily: Fontfamily,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
