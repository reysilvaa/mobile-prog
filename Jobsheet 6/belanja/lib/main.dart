import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // Import HomePage
import 'pages/item_page.dart'; // Import ItemPage

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // Menetapkan halaman awal
    routes: {
      '/': (context) => HomePage(), // Routing untuk HomePage
      '/item': (context) => ItemPage(), // Routing untuk ItemPage
    },
  ));
}
