

import 'package:flutter/material.dart';
import 'package:newsapi_devcamp/services/api_service.dart';

import '../components/custom_listtile.dart';
import '../models/news_model.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  ApiService client = ApiService();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tesla',style: TextStyle(color: Colors.black),),
            Text('News',style: TextStyle(color: Colors.red.shade800),),
          ],
        )
      ),
      body: FutureBuilder<List<Article>>  (
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            List<Article> articles = snapshot.data;

            return ListView.builder(
              itemCount: articles.length,
                itemBuilder: (context,index){
                return customListTile(articles[index],context);
                });
          }else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }
}
