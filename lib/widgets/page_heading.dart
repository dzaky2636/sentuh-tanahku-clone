import 'package:flutter/material.dart';
import '../settings.dart';

class PageHeading extends StatelessWidget {
  final String text;

  const PageHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: primaryTextColor,
      ),
      textAlign: TextAlign.start,
    );
  }
}