
import 'package:flutter/material.dart';
import 'package:news/backend/article.dart';
import 'package:news/screens/ArticleView.dart';


class Item extends StatelessWidget {
  final  String  title, desc, content, posturl;
  final String imgUrl;

  Item({this.imgUrl, this.desc, this.title, this.content, @required this.posturl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ArticleView(
              title: title,
              urlToImage: imgUrl,
              content: content,

            )
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
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

                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Text(title,maxLines: 2,
                    style: TextStyle(fontWeight:FontWeight.bold ,

                        color: Colors.white) ) ,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(desc,

                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),

                      ),

                      Container(
                        child: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}