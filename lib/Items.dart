import 'package:flutter/material.dart';
import 'package:news/backend/article.dart';


class Item extends StatelessWidget {
  final String imgUrl, title, desc, content, posturl;

  Item({this.imgUrl, this.desc, this.title, this.content, @required this.posturl});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF272727),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(1.0, 1.0), // shadow direction: bottom right
            )
          ],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0)),
          ),


        child: Container(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                child: Image.network(
                  imgUrl,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                )
              ),
              Container(
                child: Text("data goes here",
                  style: TextStyle(fontSize: 20,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(desc,
                    maxLines: 2,
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
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