import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating;

  RatingStars({required this.rating});

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.toInt(); // Number of full stars
    bool hasHalfStar = rating - fullStars >= 0.5; // Check for half star

    List<Widget> stars = [];
    for (int i = 0; i < fullStars; i++) {
      stars.add(Icon(Icons.star, color: Colors.amber));
    }
    if (hasHalfStar) {
      stars.add(Icon(Icons.star_half, color: Colors.amber));
    }
    // Add empty stars to make a total of 5
    for (int i = fullStars + (hasHalfStar ? 1 : 0); i < 5; i++) {
      stars.add(Icon(Icons.star_border, color: Colors.amber));
    }

    return Row(children: stars);
  }
}
