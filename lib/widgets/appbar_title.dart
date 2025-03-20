import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const AppBarTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 10,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}