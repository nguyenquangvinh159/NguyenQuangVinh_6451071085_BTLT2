import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {

  final VoidCallback onPressed;

  const AddToCartButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: double.infinity,

      child: ElevatedButton(

        onPressed: onPressed,

        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),

        child: Text("Add to Cart"),

      ),

    );

  }
}