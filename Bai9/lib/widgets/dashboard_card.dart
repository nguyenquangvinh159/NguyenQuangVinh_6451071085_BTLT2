import 'package:flutter/material.dart';
import '../models/dashboard_item.dart';

class DashboardCard extends StatelessWidget {

  final DashboardItem item;

  const DashboardCard({required this.item});

  @override
  Widget build(BuildContext context) {

    return Card(

      elevation: 3,

      child: InkWell(

        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("${item.title} clicked")),
          );
        },

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(
              item.icon,
              size: 50,
              color: item.color,
            ),

            SizedBox(height: 10),

            Text(
              item.title,
              style: TextStyle(fontSize: 16),
            ),

          ],

        ),

      ),

    );

  }
}