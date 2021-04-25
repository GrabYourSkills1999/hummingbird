import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/backend/article.dart';
import 'package:news/screens/ArticleView.dart';

class Item extends StatelessWidget {
  final String title, desc, content, posturl;
  final String imgUrl;
  final DateTime publshedAt;

  Item(
      {this.imgUrl,
      this.desc,
      this.title,
      this.content,
        this.publshedAt,
      @required this.posturl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      title: title,
                      urlToImage: imgUrl,
                      content: content,
                  disc: desc,
                  // publshedAt: publshedAt,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 10,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(5),
                  child: Text(title,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        fontSize: 22,
                      ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    desc,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left:15,bottom:10),
                      child: Text(publshedAt.toString())
                    ),
                    Container(
                      padding: EdgeInsets.only(right:13,bottom:10),
                      child: Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}