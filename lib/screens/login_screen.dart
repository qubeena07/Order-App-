import 'package:flutter/material.dart';
import 'package:orderin_app/screens/home_screen.dart';
import 'package:orderin_app/utils/navigation_util.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.greenAccent,
            child: const Text(
              "Press Me",
              style: TextStyle(fontSize: 16),
            ),
          ),
          onTap: () {
            navigate(context, const HomeScreen());
          },
        ),
      ),
    );
  }
}
