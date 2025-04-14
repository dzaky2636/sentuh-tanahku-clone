import 'package:flutter/material.dart';
import '../settings.dart';

class PageHeadingSubtitle extends StatelessWidget {
  final String text;

  const PageHeadingSubtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: secondaryTextColor,
      ),
      textAlign: TextAlign.start,
    );
  }
}