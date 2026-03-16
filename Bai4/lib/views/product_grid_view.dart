import 'package:flutter/material.dart';
import '../utils/product_data.dart';
import '../widgets/product_tile.dart';

class ProductGridView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Cửa Hàng Thể Thao"),
        centerTitle: true,
      ),

      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: ProductData.products
            .map((product) => ProductTile(product: product))
            .toList(),
      ),

    );
  }
}