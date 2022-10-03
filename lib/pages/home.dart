

import 'package:flutter/material.dart';
import 'package:newsapi_devcamp/services/api_service.dart';

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
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tesla',style: TextStyle(color: Colors.black),),
            Text('News',style: TextStyle(color: Colors.red.shade800),),
          ],
        )
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext ctx, AsyncSnapshot<List<Article>> snapshot){
          if(snapshot.hasData){
            return Center(
              child: Text('Success'),
            );
          }
          return Center (
            child: CircularProgressIndicator(),
          );
        },
      )
    );
  }
}
