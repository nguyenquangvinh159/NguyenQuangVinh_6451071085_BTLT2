import 'package:flutter/material.dart';
import '../views/course_detail_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Course Detail",
      debugShowCheckedModeBanner: false,
      home: CourseDetailView(),
    );
  }
}