import 'package:flutter/material.dart';
import '../utils/dashboard_data.dart';
import '../widgets/dashboard_card.dart';

class DashboardView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),

      body: Padding(

        padding: EdgeInsets.all(12),

        child: GridView.builder(

          itemCount: DashboardData.items.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,

          ),

          itemBuilder: (context, index) {

            return DashboardCard(
              item: DashboardData.items[index],
            );

          },

        ),

      ),

    );
  }
}