import 'package:flutter/material.dart';
import '../views/dialog_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Dialog Demo",
      debugShowCheckedModeBanner: false,
      home: DialogView(),
    );
  }
}