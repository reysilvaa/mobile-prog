import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page'), // Judul untuk halaman item
      ),
      body: Center(
        child: const Text(
          'Salt with 2000',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
