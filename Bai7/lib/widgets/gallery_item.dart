import 'package:flutter/material.dart';
import '../models/image_model.dart';

class GalleryItem extends StatelessWidget {

  final ImageModel image;

  const GalleryItem({required this.image});

  @override
  Widget build(BuildContext context) {

    return ClipRRect(

      borderRadius: BorderRadius.circular(12),

      child: Image.network(
        image.url,
        fit: BoxFit.cover,
      ),

    );
  }
}