import 'package:flutter/material.dart';

class MyFABWidgets extends StatelessWidget {
  const MyFABWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
