import 'package:flutter/material.dart';
import 'package:orderin_app/widgets/cart_tile.dart';
import 'package:orderin_app/widgets/menu_header.dart';

import '../widgets/customized_button.dart';

class MyCartScreen extends StatefulWidget {
  final String imageName;
  final String foodName;
  const MyCartScreen(
      {super.key, required this.foodName, required this.imageName});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const MenuHeader(
                  isCart: true,
                  title: "My Cart",
                ),
                const SizedBox(
                  height: 30,
                ),
                CartTile(
                  foodName: widget.foodName,
                  imageName: widget.imageName,
                  price: "\$10.99",
                ),
                const SizedBox(
                  height: 20,
                ),
                const CartTile(
                  foodName: "Cheese Hot\nHamburger",
                  imageName: "assets/burger1.jpeg",
                  price: "\$18.99",
                ),
              ],
            ),
            Positioned(
                bottom: 10,
                child: CustomizedButton(buttonTitle: "Checkout", onTap: () {}))
          ],
        ),
      ),
    );
  }
}
