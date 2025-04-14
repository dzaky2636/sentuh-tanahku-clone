import 'package:app/settings.dart';
import 'package:flutter/material.dart';

class LayananInformationButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onPressed;

  const LayananInformationButton({
    super.key,
    required this.label,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive ? secondaryColor : Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.0),
        ),
        side: isActive ? null : const BorderSide(color: Colors.grey),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: isActive ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}