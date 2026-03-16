import 'package:flutter/material.dart';
import '../view/profile_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      debugShowCheckedModeBanner: false,
      home: ProfileView(),
    );
  }
}