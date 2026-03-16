import 'package:flutter/material.dart';
import '../views/product_detail_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Product Detail",
      debugShowCheckedModeBanner: false,
      home: ProductDetailView(),
    );
  }
}