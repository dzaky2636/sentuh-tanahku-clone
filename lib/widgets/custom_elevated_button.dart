import 'package:flutter/material.dart';
import '../settings.dart'; // Import the settings file for colors

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final String? iconPath;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: iconPath != null
          ? Image.asset(
              iconPath!,
              height: 24,
            )
          : const SizedBox.shrink(),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: secondaryColor,
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}