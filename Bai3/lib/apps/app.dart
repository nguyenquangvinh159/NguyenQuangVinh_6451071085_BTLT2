import 'package:flutter/material.dart';
import '../views/news_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      home: NewsView(),
    );
  }
}