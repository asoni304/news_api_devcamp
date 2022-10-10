import 'package:flutter/material.dart';

import '../models/news_model.dart';

class ArticleDetails extends StatelessWidget {
final Article article;
ArticleDetails({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title,style:const TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 18,overflow: TextOverflow.ellipsis),),
      ),
      body: Padding(
          padding: EdgeInsets.all(7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(article.urlToImage.toString()),fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),

              ),
              child: Text(article.source.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white)),
            ),
            const SizedBox(height: 8,),
            Text(article.description,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

          ],
        ),
      ),
    );
  }
}
