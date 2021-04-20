import 'package:http/http.dart' as http;
import 'article.dart';
import 'dart:convert';


class News {

  List<Article> news  = [];

  Future<void> getnews() async{

    var url = "https://newsapi.org/v2/top-headlines?country=in&excludeDomains=stackoverflow.com&sortBy=publishedAt&language=en&apiKey=f35e96e8440643358ffc688de1f15a39";

    var response = await http.get(Uri.parse(url));

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
          news.add(article);
        }

      });
    }
  }
}