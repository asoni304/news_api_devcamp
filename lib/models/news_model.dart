import 'package:newsapi_devcamp/models/source_model.dart';

class Article{
  SourceModel source;
  String author;
  String title;
  String description;
  String content;
  String urlToImage;
  String publishedAt;
  String url;

  Article({required this.source,required this.author,required this.title,required this.description,required this.content,required this.publishedAt,required this.urlToImage,required this.url});

  factory Article.fromJson(Map<String,dynamic>json){
    return Article(
      source: SourceModel.fromJson(json['source']),
        author: json['author'] as String,
        title: json['title'] as String,
        description: json['description'] as String,
        content: json['content'] as String,
        publishedAt:json['publishedAt'] as String ,
        urlToImage: json['urlToImage'] as String,
        url: json['url'] as String


    );
  }
}