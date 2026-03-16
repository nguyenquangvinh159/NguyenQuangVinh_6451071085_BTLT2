import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../utils/category_data.dart';
import '../widgets/category_panel.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  List<CategoryModel> categories = CategoryData.categories;

  void togglePanel(int index, bool isExpanded) {

    setState(() {
      categories[index].isExpanded = !isExpanded;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Category Menu"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Expansion Menu\nUsing ExpansionPanelList",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            CategoryPanel(
              categories: categories,
              onToggle: togglePanel,
            ),

          ],
        ),
      ),

    );
  }
}