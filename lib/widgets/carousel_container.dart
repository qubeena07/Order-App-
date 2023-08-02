import 'package:flutter/material.dart';

class CarouselContainer extends StatelessWidget {
  final String bgImage;
  final String? foodName;
  final String? foodPrice;

  const CarouselContainer(
      {super.key, required this.bgImage, this.foodName, this.foodPrice});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 280,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Image.asset(
              bgImage,
              fit: BoxFit.contain,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 8,
                right: 8,
              ),
              child: Column(
                children: [
                  Text(
                    "Cheese Hot Hamburger",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
