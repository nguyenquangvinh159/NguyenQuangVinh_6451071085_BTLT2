import 'package:flutter/material.dart';
import '../views/dashboard_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard",
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}