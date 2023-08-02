import 'package:flutter/material.dart';
import 'package:orderin_app/widgets/carousel_container.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular items",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Flexible(
          child: CarouselContainer(
            bgImage: "assets/burger1.jpeg",
          ),
        )
      ],
    );
  }
}
