import 'package:flutter/material.dart';
import '../settings.dart';

class SecondaryCustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final String? iconPath;

  const SecondaryCustomElevatedButton({
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
      label: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: secondaryColor,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        alignment: Alignment.centerLeft, 
      ),
    );
  }
}