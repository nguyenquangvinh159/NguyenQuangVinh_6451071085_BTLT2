import 'package:flutter/material.dart';
import '../views/category_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Category Menu",
      debugShowCheckedModeBanner: false,
      home: CategoryView(),
    );
  }
}