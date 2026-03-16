import 'package:flutter/material.dart';
import '../views/gallery_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gallery",
      debugShowCheckedModeBanner: false,
      home: GalleryView(),
    );
  }
}