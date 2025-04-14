import 'package:flutter/material.dart';
import '../settings.dart';

class AccountPrompt extends StatelessWidget {
  final String promptText;
  final String actionText;
  final VoidCallback onPressed;

  const AccountPrompt({
    Key? key,
    required this.promptText,
    required this.actionText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            promptText,
            style: TextStyle(
              color: secondaryColor,
              fontSize: 16,
            ),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              actionText,
              style: TextStyle(
                color: secondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}