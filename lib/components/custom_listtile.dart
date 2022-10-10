import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../pages/article_details.dart';

Widget customListTile(Article article,BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleDetails(article: article,)));
    },
    child: Container(
     margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const  [
           BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0,
          ),

        ],),
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
          Text(article.title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

        ],
      ),
    ),
  );
}