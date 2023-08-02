import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300)),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey[400]),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[400], fontSize: 14),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Text(
                "|",
                style: TextStyle(
                  color: Colors.grey[350],
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Newyork,NYC",
                      style: TextStyle(color: Colors.grey[400], fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.filter_list_sharp,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
