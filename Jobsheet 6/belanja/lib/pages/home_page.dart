import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart'; // Ensure this path is correct
import 'package:belanja/widgets/footer.dart'; // Import the footer widget

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        imgproduct: 'assets/images/sugar.png',
        stok: 10,
        rating: 4.5),
    Item(
        name: 'Salt',
        price: 2000,
        imgproduct: 'assets/images/salt.png',
        stok: 15,
        rating: 3),
  ];

  // Method to display rating as stars
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/item',
                        arguments: item,
                      );
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Hero(
                            tag: item.name,
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                              child: Image.asset(
                                item.imgproduct,
                                fit: BoxFit.cover,
                                height: 120,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Rp ${item.price}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.teal,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 4),
                                Text('Stok: ${item.stok}',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                                SizedBox(height: 6),
                                _buildRatingStars(item.rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Footer(), // Use footer without parameters
          ],
        ),
      ),
    );
  }
}
