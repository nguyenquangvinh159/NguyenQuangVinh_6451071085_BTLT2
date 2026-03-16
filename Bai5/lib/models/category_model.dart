class CategoryModel {

  final String title;
  final List<String> items;
  bool isExpanded;

  CategoryModel({
    required this.title,
    required this.items,
    this.isExpanded = false,
  });

}