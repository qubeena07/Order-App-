import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  final bool isCart;
  final String? title;
  const MenuHeader({super.key, this.isCart = false, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color.fromARGB(255, 216, 216, 216),
                    blurRadius: 12.0,
                    offset: Offset(0, 5))
              ],
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 105,
        ),
        isCart
            ? Text(
                title ?? "",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )
            : const SizedBox.shrink(),
        const Spacer(),
        isCart
            ? const SizedBox.shrink()
            : GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color.fromARGB(255, 216, 216, 216),
                          blurRadius: 12.0,
                          offset: Offset(0, 5))
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
