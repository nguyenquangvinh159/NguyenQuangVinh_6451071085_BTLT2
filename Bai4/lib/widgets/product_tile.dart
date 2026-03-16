import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductTile extends StatelessWidget {

  final ProductModel product;

  const ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {

    return GridTile(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          product.image,
          fit: BoxFit.cover,
        ),
      ),

      footer: Container(
        color: Colors.black54,
        padding: EdgeInsets.all(6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text(
              product.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),

            Text(
              "₫${product.price}",
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            )

          ],
        ),
      ),
    );
  }
}