import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  late  String content;
  late String description;
  @override
  void initState() {
   getNews();
    super.initState();

  }
  getNews()async{
    http.Response response = await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2022-08-26&sortBy=publishedAt&apiKey=6d443012c74b4b95b201b847cf0b899a'));
   if(response.statusCode == 200){
     print(response.body);

     Map jsonData = json.decode(response.body) ;
     setState(() {
       content= jsonData["articles"]["content"];
       description = jsonData["articles"]["description"];
     });
   }
   else{
     print('error!');
   }
  }
  userResponse(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today\'s News'),
      ),
      body: Column(
        children: [
          Text(description),
          Text(content) ,
        ],
      ),
    );
  }
}
