import '../models/category_model.dart';

class CategoryData {

  static List<CategoryModel> categories = [

    CategoryModel(
      title: "Fruits",
      items: ["🍎 Apple", "🍌 Banana", "🍊 Orange"],
    ),

    CategoryModel(
      title: "Vegetables",
      items: ["🥕 Carrot", "🥦 Broccoli", "🌽 Corn"],
    ),

    CategoryModel(
      title: "Drinks",
      items: ["🥤 Soda", "☕ Coffee", "🧃 Juice"],
    ),

  ];
}