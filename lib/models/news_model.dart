class News{
  String author;
  String title;
  String description;
  String content;
  String urlToImage;
  String publishedAt;
  String url;

  News({required this.author,required this.title,required this.description,required this.content,required this.publishedAt,required this.urlToImage,required this.url});

  factory News.fromJson(Map<String,dynamic>json){
    return News(
        author: json['author'],
        title: json['title'],
        description: json['description'],
        content: json['content'],
        publishedAt:json['publishedAt'],
        urlToImage: json['urlToImage'],
        url: json['url']

    );
  }
}