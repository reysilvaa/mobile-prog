import 'package:flutter/material.dart';
import '../models/item.dart'; // Ensure this path is correct
import 'item_card.dart'; // Import the ItemCard widget

class ItemGrid extends StatelessWidget {
  final List<Item> items;

  ItemGrid({required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
        return ItemCard(item: item);
      },
    );
  }
}
