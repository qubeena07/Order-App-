import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FirstMenuWidget extends StatefulWidget {
  final String foodName;
  final String foodType;
  final String imageName;
  final String foodDetails;

  const FirstMenuWidget(
      {super.key,
      required this.foodDetails,
      required this.foodName,
      required this.foodType,
      required this.imageName});

  @override
  State<FirstMenuWidget> createState() => _FirstMenuWidgetState();
}

class _FirstMenuWidgetState extends State<FirstMenuWidget> {
  double? _ratingValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.foodName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            CircleAvatar(
                radius: 15,
                backgroundColor: Colors.amber[100],
                child: Icon(
                  Icons.local_pizza,
                  color: Colors.deepOrangeAccent[400],
                )),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.foodType,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            RatingBar(
                itemSize: 18,
                initialRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                ratingWidget: RatingWidget(
                    full: const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    half: const Icon(
                      Icons.star_half,
                      color: Colors.orange,
                    ),
                    empty: const Icon(
                      Icons.star_outline,
                      color: Colors.orange,
                    )),
                onRatingUpdate: (value) {
                  setState(() {
                    _ratingValue = value;
                  });
                }),
            const SizedBox(
              width: 3,
            ),
            Text(
              _ratingValue.toString(),
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.40,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    widget.imageName,
                  ))),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Details",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          widget.foodDetails,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
        ),
      ],
    );
  }
}
