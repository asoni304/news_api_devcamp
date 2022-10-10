import 'package:newsapi_devcamp/models/source_model.dart';

class Article{
  SourceModel source;
  String author;
  String title;
  String description;
  String content;
  String? urlToImage;
  String publishedAt;
  String url;

  Article({required this.source,required this.author,required this.title,required this.description,required this.content,required this.publishedAt,required this.urlToImage,required this.url});

  factory Article.fromJson(Map <String,dynamic> json){
    return Article(
        source: SourceModel.fromJson(json['source']),
        author: json['author'] ?? "",
        title: json['title'] ?? ""  ,
        description: json['description'] ?? ""  ,
        content: json['content'] ?? ""  ,
        publishedAt:json['publishedAt'] ?? "",
        urlToImage: json['urlToImage'] ?? "" ,
        url: json['url'] ?? ""


    );

  }
}