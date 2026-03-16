import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../widgets/article_card.dart';
import '../utils/constants.dart';

class NewsView extends StatelessWidget {

  List<ArticleModel> getArticles() {
    return AppConstants.articles.map((item) {
      return ArticleModel(
        title: item["title"]!,
        description: item["description"]!,
        image: item["image"]!,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {

    final articles = getArticles();

    return Scaffold(

      appBar: AppBar(
        title: Text("News"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        child: Column(
          children: articles
              .map((article) => ArticleCard(article: article))
              .toList(),
        ),

      ),

    );
  }
}