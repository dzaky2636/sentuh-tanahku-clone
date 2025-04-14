import 'package:flutter/material.dart';
import '../settings.dart';

class ButtonRow extends StatelessWidget {
  final List<Map<String, dynamic>> buttons; // List of button data (text, image, and onTap)

  const ButtonRow({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: buttons.map((button) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: button['onTap'], // Use the onTap callback from the array
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(button['image']), // Use the image from the array
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    button['text'], // Use the text from the array
                    style: TextStyle(
                      fontSize: 12,
                      color: primaryTextColor,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}