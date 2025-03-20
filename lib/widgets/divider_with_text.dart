import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final String text;

  const DividerWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}