import 'package:flutter/material.dart';
import 'package:orderin_app/screens/my_cart_screen.dart';
import 'package:orderin_app/utils/navigation_util.dart';
import 'package:orderin_app/widgets/customized_button.dart';
import 'package:orderin_app/widgets/first_menu_widget.dart';
import 'package:orderin_app/widgets/menu_header.dart';

class MenuScreen extends StatefulWidget {
  final String foodName;
  final String foodType;
  final String imageName;
  final String foodDetails;
  const MenuScreen(
      {super.key,
      required this.foodDetails,
      required this.foodName,
      required this.foodType,
      required this.imageName});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
                    isCart: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FirstMenuWidget(
                    foodName: widget.foodName,
                    foodType: widget.foodType,
                    imageName: widget.imageName,
                    foodDetails: widget.foodDetails,
                    // foodName: "Italian Hot Pizza",
                    // foodType: "Pizza Italian",
                    // imageName: "assets/pizza.avif",
                    // foodDetails:
                    //     "To prepare this delicious Cheese Pizza recipe, preheat the oven on convection mode at 250 degree Celsius. Meanwhile, spread the tomato sauce evenly on each pizza base. Take a chopping board and chop onions, tomatoes, capsicum and mushroom on it.",
                  ),
                ],
              ),
              Positioned(
                  bottom: 10,
                  child: CustomizedButton(
                      buttonTitle: "Add to Cart",
                      onTap: () {
                        navigate(context, const MyCartScreen());
                      }))
            ],
          )),
      // bottomNavigationBar:
      //     CustomizedButton(buttonTitle: "Add to Cart", onTap: () {})
    );
  }
}
