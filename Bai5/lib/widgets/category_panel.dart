import 'package:flutter/material.dart';
import '../models/category_model.dart';

class CategoryPanel extends StatelessWidget {

  final List<CategoryModel> categories;
  final Function(int, bool) onToggle;

  const CategoryPanel({
    required this.categories,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {

    return ExpansionPanelList(
      expansionCallback: (index, isExpanded) {
        onToggle(index, isExpanded);
      },

      children: categories.map<ExpansionPanel>((category) {

        return ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(category.title),
            );
          },

          body: Column(
            children: category.items.map((item) {
              return ListTile(
                title: Text(item),
              );
            }).toList(),
          ),

          isExpanded: category.isExpanded,
        );

      }).toList(),

    );
  }
}