import 'package:flutter/material.dart';
import 'package:orderin_app/widgets/carousel_widget.dart';
import 'package:orderin_app/widgets/food_list.dart';
import 'package:orderin_app/widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            SizedBox(
              height: 20,
            ),
            Flexible(child: FoodList()),
            CarouselWidget()
          ],
        ),
      ),
    );
  }
}
