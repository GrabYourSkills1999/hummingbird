import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/backend/infographics.dart';
import '../Drawer.dart';
import '../Items.dart';
import '../search.dart';
import 'package:news/backend/news.dart';
class Infographics extends StatefulWidget {
  @override
  _InfographicsState createState() => _InfographicsState();
}

class _InfographicsState extends State<Infographics> {
  var newslist;
  bool _loading = true;
  void getNews() async {
    backend_Infographics news =backend_Infographics();
    await news.getnews();
    newslist = news.infographics;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
   // _loading = true;
    // TODO: implement initState
    super.initState();


    getNews();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
      body:_loading?Center(child: CircularProgressIndicator()): SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 16),
            child: ListView.builder(
                itemCount: newslist.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Item(
                    imgUrl: newslist[index].urlToImage ?? "",
                    title: newslist[index].title ?? "",
                    desc: newslist[index].description ?? "",
                    content: newslist[index].content ?? "",
                    posturl: newslist[index].articleUrl ?? "",
                  );
                }),
          ),
        ),
      )
    );

  }
}
