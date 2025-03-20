import 'package:flutter/material.dart';

class PageHeadingSubtitle extends StatelessWidget {
  final String text;

  const PageHeadingSubtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
      textAlign: TextAlign.start,
    );
  }
}