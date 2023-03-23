import 'package:basic_recipe_app/food.dart';
import 'package:basic_recipe_app/route/route.dart';
import 'package:basic_recipe_app/widgets/food_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  List<Food> food = [
    Food(name: 'Burger', img: 'Burger.png', price: 5, info: ""),
    Food(name: 'Chicken', img: 'Chicken.png', price: 6, info: ""),
    Food(name: 'Lagmon', img: 'Lagmon.png', price: 4, info: ""),
    Food(name: 'Pizza', img: 'Pizza.png', price: 10, info: ""),
    Food(name: 'Somsa', img: 'Somsa.png', price: 5, info: ""),
    Food(name: "Sharingan", img: "Rasingan.jpg", price: 999,info: "")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, homePage);
          },
        ),
        title: Text('TITLE'),
      ),
      body: Container(
        child: ListView.separated(
            itemCount: food.length,
            itemBuilder: (context, index) {
              print(food[index].name);
              return FoodWidget(food: food[index]);
            },
            separatorBuilder: ((context, index) => Divider())),
      ),
    );
  }
}
