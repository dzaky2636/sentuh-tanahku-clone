import 'package:flutter/material.dart';

class PageHeading extends StatelessWidget {
  final String text;

  const PageHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textAlign: TextAlign.start,
    );
  }
}