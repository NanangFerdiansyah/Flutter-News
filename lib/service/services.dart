import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/new_model.dart';

class NewsApi {
  // for news home screen
  List<NewsModel> dataStore = [];
  Future<void> getNews() async {
    Uri url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=817e6bcd4e064b49a69e398b03c1cf32");
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData["status"] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null &&
            element['author'] != null &&
            element['content'] != null) {
          NewsModel newsModel = NewsModel(
            title: element['title'], // name must be same from api
            urlToImage: element['urlToImage'],
            description: element['description'],
            author: element['author'],
            content: element['content'],
          );
          dataStore.add(newsModel);
        }
      });
    }
  }
}

class CategoryNews {
  // for news home screen
  List<NewsModel> dataStore = [];
  Future<void> getNews(String category) async {
    Uri url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=817e6bcd4e064b49a69e398b03c1cf32");
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null &&
            element['author'] != null &&
            element['content'] != null) {
          NewsModel newsModel = NewsModel(
            title: element['title'], // name must be same from api
            urlToImage: element['urlToImage'],
            description: element['description'],
            author: element['author'],
            content: element['content'],
          );
          dataStore.add(newsModel);
        }
      });
    }
  }
}
// for category news
// we have used the free news api. for that, first you need to create a account and  then login 
// after that get the api key  