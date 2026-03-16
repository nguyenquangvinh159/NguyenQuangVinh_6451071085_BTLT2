import 'package:flutter/material.dart';

class EnrollButton extends StatelessWidget {

  final VoidCallback onPressed;

  const EnrollButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(

      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),

      child: Text("Enroll Now"),

    );
  }
}