import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart'; // Ensure this path is correct
import 'package:belanja/widgets/footer.dart'; // Import the footer widget

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            // Use Expanded to take remaining space
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Hero(
                    tag: item.name,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20)),
                      child: Image.asset(
                        item.imgproduct,
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        SizedBox(height: 8),
                        Text('Rp ${item.price}',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.teal)),
                        SizedBox(height: 12),
                        Text('Stok: ${item.stok}',
                            style: TextStyle(fontSize: 18)),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Text('Rating: ', style: TextStyle(fontSize: 18)),
                            _buildRatingStars(item.rating),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text('Description:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text(
                          'This is a detailed description of the item. You can include more information here, such as ingredients, usage, or benefits.',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Footer(), // Footer fixed at the bottom
        ],
      ),
    );
  }

  Widget _buildRatingStars(double rating) {
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
