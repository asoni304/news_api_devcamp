
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/news_model.dart';

//http request service to allow us make a get request

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticle() async {

    final queryParameters = {
      'country': 'us',
      'category': 'business',
      'apiKey': '6d443012c74b4b95b201b847cf0b899a'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
   // print(response.body);
    List<dynamic> body = json['articles'] ;
    print(body);
    List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();


   // print(articles.toList());
    return articles;

  }

  //Method to get articles
  Future<List<Article>> fetchArticles() async {
    final queryParameters = {
      'country': 'us',
      'category': 'business',
      'apiKey': '6d443012c74b4b95b201b847cf0b899a'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);

    final response = await client.get(uri);
    final articleResponse = json.decode(response.body);
    List<Article> articles = List<Article>.from(articleResponse.map((dynamic art)=>Article.fromJson(art)))
        .toList(); // Now we're looping over the response entries (maps of article info) to create Article instances
    return articles;
  }
}