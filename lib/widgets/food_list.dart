import 'package:flutter/material.dart';
import 'package:orderin_app/screens/menu_screen.dart';
import 'package:orderin_app/utils/navigation_util.dart';
import 'package:orderin_app/widgets/food_widget.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> foodList = [
      {
        "name": "All",
        "image": "assets/chicken.png",
        "navigate": const MenuScreen(
            foodName: "Italian Hot Pizza",
            foodType: "Pizza Italian",
            imageName: "assets/pizza.avif",
            foodDetails:
                "To prepare this delicious Cheese Pizza recipe, preheat the oven on convection mode at 250 degree Celsius. Meanwhile, spread the tomato sauce evenly on each pizza base. Take a chopping board and chop onions, tomatoes, capsicum and mushroom on it")
      },
      {
        "name": "Burger",
        "image": "assets/burger.jpeg",
        "navigate": const MenuScreen(
            foodName: "Chicken Burger",
            foodType: "Mexican Burger",
            imageName: "assets/burger1.jpeg",
            foodDetails:
                "To prepare this delicious Cheese Pizza recipe, preheat the oven on convection mode at 250 degree Celsius. Meanwhile, spread the tomato sauce evenly on each pizza base. Take a chopping board and chop onions, tomatoes, capsicum and mushroom on it")
      },
      {
        "name": "Drinks",
        "image": "assets/drinks.jpeg",
        "navigate": const MenuScreen(
            foodName: "Orange Cocktail",
            foodType: "Fresh Drink",
            imageName: "assets/drinks1.jpeg",
            foodDetails:
                "To prepare this delicious Cheese Pizza recipe, preheat the oven on convection mode at 250 degree Celsius. Meanwhile, spread the tomato sauce evenly on each pizza base. Take a chopping board and chop onions, tomatoes, capsicum and mushroom on it")
      },
      {
        "name": "Chicken",
        "image": "assets/chicken.png",
        "navigate": const MenuScreen(
            foodName: "Grill Chicken",
            foodType: "Nepali Grilled Chicken",
            imageName: "assets/grill.jpeg",
            foodDetails:
                "To prepare this delicious Cheese Pizza recipe, preheat the oven on convection mode at 250 degree Celsius. Meanwhile, spread the tomato sauce evenly on each pizza base. Take a chopping board and chop onions, tomatoes, capsicum and mushroom on it")
      },
      {
        "name": "Pizza",
        "image": "assets/pizza.jpeg",
        "navigate": const MenuScreen(
            foodName: "Italian Hot Pizza",
            foodType: "Pizza Italian",
            imageName: "assets/pizza.avif",
            foodDetails:
                "To prepare this delicious Cheese Pizza recipe, preheat the oven on convection mode at 250 degree Celsius. Meanwhile, spread the tomato sauce evenly on each pizza base. Take a chopping board and chop onions, tomatoes, capsicum and mushroom on it")
      },
    ];

    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GestureDetector(
              onTap: () {
                navigate(context, foodList[index]["navigate"]);
              },
              child: FoodWidget(
                  imageName: foodList[index]["image"],
                  foodName: foodList[index]["name"]),
            ),
          );
        });
  }
}
