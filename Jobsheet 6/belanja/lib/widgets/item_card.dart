import 'package:flutter/material.dart';
import '../models/item.dart'; // Ensure this path is correct
import 'rating_stars.dart'; // Import the RatingStars widget

class ItemCard extends StatelessWidget {
  final Item item;

  ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/item', // Route name
          arguments: item, // Pass the item as an argument
        );
      },
      child: Card(
        elevation: 8, // Increased elevation for a more pronounced effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Rounded corners
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: item.name, // Unique tag for hero animation
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ), // Rounded top corners
                child: Image.asset(
                  item.imgproduct,
                  fit: BoxFit.cover,
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0), // More padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 20, // Larger font size for item name
                      fontWeight: FontWeight.bold, // Bold item name
                      color: Colors.black87, // Improved text color
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Rp ${item.price}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.w600, // Semi-bold price
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Stok: ${item.stok}',
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8),
                  RatingStars(rating: item.rating), // Display rating as stars
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
