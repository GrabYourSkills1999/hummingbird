import 'package:flutter/material.dart';
import '../constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "GrabYourSkills",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: Fontfamily,
                letterSpacing: 1,
              ),
            ),
          ),
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
                              width: 250,
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
                              width: 250,
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
                              width: 250,
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
                              width: 250,
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
                              width: 250,
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
                              width: 250,
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
                              width: 250,
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
      ),
    );
  }
}
