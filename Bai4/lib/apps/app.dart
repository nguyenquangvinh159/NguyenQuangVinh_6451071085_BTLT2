import 'package:flutter/material.dart';
import '../views/product_grid_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Product Grid",
      home: ProductGridView(),
    );
  }
}