import 'package:flutter/material.dart';
import '../models/food_model.dart';
import '../widgets/food_card.dart';

class FoodListView extends StatelessWidget {

  final List<FoodModel> foods = [

    FoodModel(
      name: "Phở Bò",
      description: "Phở Bò Đặc Biệt",
      price: "65,000 VND",
      image: "https://upload.wikimedia.org/wikipedia/commons/5/53/Pho-Beef-Noodles-2008.jpg",
    ),

    FoodModel(
      name: "Bún Chả",
      description: "Bún Chả Hà Nội",
      price: "55,000 VND",
      image: "https://upload.wikimedia.org/wikipedia/commons/6/64/Bun_cha.jpg",
    ),

    FoodModel(
      name: "Cơm Tấm",
      description: "Cơm Tấm Sườn Bì Chả",
      price: "50,000 VND",
      image: "https://upload.wikimedia.org/wikipedia/commons/9/9f/Com_tam_suon_bi_cha.jpg",
    ),

    FoodModel(
      name: "Bánh Mì",
      description: "Bánh Mì Thịt Nướng",
      price: "35,000 VND",
      image: "https://upload.wikimedia.org/wikipedia/commons/0/0c/Banh_mi_thit.jpg",
    ),

    FoodModel(
      name: "Gỏi Cuốn",
      description: "Gỏi Cuốn Tôm Thịt",
      price: "40,000 VND",
      image: "https://upload.wikimedia.org/wikipedia/commons/2/2c/Goi_cuon.jpg",
    ),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Danh Sách Món Ăn"),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FoodCard(food: foods[index]);
        },
      ),

    );
  }
}