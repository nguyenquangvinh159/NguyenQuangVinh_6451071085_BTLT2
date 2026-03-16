import 'package:flutter/material.dart';
import '../models/food_model.dart';

class FoodCard extends StatelessWidget {

  final FoodModel food;

  const FoodCard({required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                food.image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    food.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    food.description,
                    style: TextStyle(color: Colors.grey),
                  ),

                  SizedBox(height: 4),

                  Text(
                    food.price,
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}