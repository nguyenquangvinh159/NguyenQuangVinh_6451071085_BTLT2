import 'package:flutter/material.dart';
import '../utils/product_data.dart';
import '../widgets/add_to_cart_button.dart';

class ProductDetailView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final product = ProductData.product;

    return Scaffold(

      appBar: AppBar(
        title: Text("Product Detail"),
      ),

      body: SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.all(16),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(product.image),
              ),

              SizedBox(height: 20),

              Text(
                product.name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8),

              Text(
                product.price,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 8),

              Text(
                product.description,
                style: TextStyle(fontSize: 14),
              ),

              SizedBox(height: 30),

              AddToCartButton(
                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Added to cart")),
                  );

                },
              )

            ],

          ),

        ),

      ),

    );
  }
}