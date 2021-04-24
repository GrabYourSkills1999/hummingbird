import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {

  final  String urlToImage;
  final String content;
      final String title;
  ArticleView({@required this.urlToImage,@required this.content,@ required this.title});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  final Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
       widget.title,
          style:
          TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.network(widget.urlToImage),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:Text(widget.content,),
            ),
          ],
        ),
      ),
    );
  }
}