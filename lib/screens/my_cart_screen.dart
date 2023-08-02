import 'package:flutter/material.dart';
import 'package:orderin_app/widgets/cart_tile.dart';
import 'package:orderin_app/widgets/menu_header.dart';

import '../widgets/customized_button.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MenuHeader(
                  isCart: true,
                  title: "My Cart",
                ),
                SizedBox(
                  height: 30,
                ),
                CartTile(
                  foodName: "Cheese Hot\nHamburger",
                  imageName: "assets/burger1.jpeg",
                  price: "\$18.99",
                ),
                SizedBox(
                  height: 20,
                ),
                CartTile(
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
