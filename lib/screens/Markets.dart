import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../search.dart';

class Markets extends StatefulWidget {
  @override
  _MarketsState createState() => _MarketsState();
}

class _MarketsState extends State<Markets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimage.freepik.com%2Ffree-icon%2Fimportant-person_318-10744.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-icon%2Fimportant-person_696850.htm&tbnid=seOp8NzWqCxt6M&vet=12ahUKEwiG9Iiox9ntAhWKB7cAHZC2AOkQMygNegUIARD2AQ..i&docid=FIchAlQX37C_IM&w=626&h=626&q=person%20icon&ved=2ahUKEwiG9Iiox9ntAhWKB7cAHZC2AOkQMygNegUIARD2AQ"),
                  ),
                  Text("Name",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              leading:  Icon(Icons.notifications_active),
              title: Text('Set notification time'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:  Icon(FontAwesomeIcons.googlePlay,size: 20,),
              title: Text('Rate us on Play Store'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:  Icon(FontAwesomeIcons.envelopeOpenText,size: 20,),
              title: Text('Any Feedback?'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:  Icon(FontAwesomeIcons.shareAlt,size: 20,),
              title: Text('Share with a friend'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:  Icon(FontAwesomeIcons.signOutAlt,size: 20,),
              title: Text('Logout'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25.0)
                ),
              ),
              height: 250,
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      child: Image(
                        image: NetworkImage(
                            'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg'),
                      ),
                    ),
                    Container(
                      child: Text("data",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text("5 hours ago",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            width:  220,
                          ),
                          Container(
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25.0)
                ),
              ),
              height: 250,
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      child: Image(
                        image: NetworkImage(
                            'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg'),
                      ),
                    ),
                    Container(
                      child: Text("data",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text("5 hours ago",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 220,
                          ),
                          Container(
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25.0)
                ),
              ),
              height: 250,
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      child: Image(
                        image: NetworkImage(
                            'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg'),
                      ),
                    ),
                    Container(
                      child: Text("data",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text("5 hours ago",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            width:  220,
                          ),
                          Container(
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25.0)
                ),
              ),
              height: 250,
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      child: Image(
                        image: NetworkImage(
                            'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg'),
                      ),
                    ),
                    Container(
                      child: Text("data",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text("5 hours ago",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            width:  220,
                          ),
                          Container(
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25.0)
                ),
              ),
              height: 250,
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      child: Image(
                        image: NetworkImage(
                            'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg'),
                      ),
                    ),
                    Container(
                      child: Text("data",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text("5 hours ago",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 220,
                          ),
                          Container(
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25.0)
                ),
              ),
              height: 250,
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      child: Image(
                        image: NetworkImage(
                            'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg'),
                      ),
                    ),
                    Container(
                      child: Text("data",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text("5 hours ago",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 220,
                          ),
                          Container(
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25.0)
                ),
              ),
              height: 250,
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      child: Image(
                        image: NetworkImage(
                            'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg'),
                      ),
                    ),
                    Container(
                      child: Text("data",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text("5 hours ago",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 220,
                          ),
                          Container(
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
