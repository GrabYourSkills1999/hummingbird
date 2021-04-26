import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {

  final  String urlToImage;
  final String content;
      final String title;
  final String disc;
  ArticleView({@required this.urlToImage,@required this.content,@ required this.title,@ required this.disc});

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
          maxLines: 2,
          style:
          TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            fontSize: 15

          ),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image.network(widget.urlToImage),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child:Text(widget.disc,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: 0.8
                ),
              ),
            ),

            Divider(
              color: Colors.white,
              indent: 10,
              endIndent: 10,
              thickness: 1,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child:Text(widget.content,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 16,
                    letterSpacing: 0.8
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child:Center(
                child: Text("Read More",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            // NewWidget(widget: widget, widget1: widget),

          ],
        ),
      ),
    );
  }
}

// class NewWidget extends StatelessWidget {
//   const NewWidget({
//     Key key,
//     @required this.widget,
//     @required this.widget1,
//   }) : super(key: key);
//
//   final ArticleView widget;
//   final ArticleView widget1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//
//       child: Row(
//         children: [
//           Expanded(
//             child: Text(widget.title,
//               maxLines: 2,
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Image.network(widget.urlToImage,height: 60)
//             ,
//           ),
//         ],
//       ),
//     );
//   }
// }