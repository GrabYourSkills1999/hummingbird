import 'package:flutter/material.dart';
class ArticleSearch extends SearchDelegate {
  ArticleSearch({
    String hintText,
  }) : super(
    searchFieldLabel: hintText,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.search,
  );

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
      Navigator.pop(context);
    });
  }

  @override
  Widget buildSuggestions(BuildContext context) => Text('suggestions');

  @override
  Widget buildResults(BuildContext context){
   return Text(query);
  }
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: (){
      query='';
    })
    ];
  }
}