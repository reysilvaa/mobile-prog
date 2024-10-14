import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  // Static constants for name and NIM
  static const String name = 'Moch Reynald Silva Baktiar';
  static const String nim = '2241720203';

  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.tealAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(30)), // Rounded top corners
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person,
                  color: Colors.white, size: 24), // Icon for name
              SizedBox(width: 8),
              Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.school, color: Colors.white, size: 24), // Icon for NIM
              SizedBox(width: 8),
              Text(
                'NIM: $nim',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          SizedBox(height: 10), // Add space at the bottom
        ],
      ),
    );
  }
}
