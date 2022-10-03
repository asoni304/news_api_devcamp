
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/news_model.dart';

//http request service to allow us make a get request

class ApiService{

  final urlEndPoint = 'https://newsapi.org/v2/everything?q=tesla&from=2022-09-03&sortBy=publishedAt&apiKey=6d443012c74b4b95b201b847cf0b899a';

  //http request service

Future <List<Article>> getArticle() async{
  http.Response res = await http.get(Uri.parse(urlEndPoint));

  if(res.statusCode == 200){
    Map <String,dynamic> json = jsonDecode(res.body);

//get different articles from json to list
    List <dynamic> body = json['articles'];
    List <Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();

    return articles;
    print(res.body);
  }
  else{
    throw('Can\'t get the articles!');
  }
}
}