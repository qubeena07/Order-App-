import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
  final String imageName;
  final String foodName;

  const FoodWidget(
      {super.key, required this.imageName, required this.foodName});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade300,
            backgroundImage: AssetImage(
              imageName,
            )),
        const SizedBox(
          height: 8,
        ),
        Text(
          foodName,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    );
  }
}
