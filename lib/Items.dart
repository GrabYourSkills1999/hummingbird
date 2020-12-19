import 'package:flutter/material.dart';

class Item extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  height: 100,
                  width: 300,
                  image: AssetImage('image/hh.JPG'),
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
    );
  }
}