import 'package:basic_recipe_app/route/route.dart';
import 'package:basic_recipe_app/screen/burger_page.dart';
import 'package:basic_recipe_app/screen/chicken_page.dart';
import 'package:basic_recipe_app/screen/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:basic_recipe_app/screen/home_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'menu',
    routes: {
      homePage: (context) => HomePage(),
      menuPage: (context) => MenuPage(),
      burgerPage: (context) => BurgerPage(),
      chickenPage: (context) => ChickenPage(),
    },
  ));
}
