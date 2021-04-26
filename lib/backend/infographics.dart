
import 'package:http/http.dart' as http;
import 'article.dart';
import 'dart:convert';


class backend_Infographics {

  List<Article> infographics  = [];

  Future<void> getnews() async{

    var infographicsurl = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=f35e96e8440643358ffc688de1f15a39";
    var response = await http.get(Uri.parse(infographicsurl));

    var jsonData = jsonDecode(response.body);



    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          infographics.add(article);

        }

      });
    }
  }
}