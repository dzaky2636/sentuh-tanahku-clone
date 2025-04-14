import 'package:flutter/material.dart';
import '../settings.dart';

class ButtonRow extends StatelessWidget {
  final int buttonCount;

  const ButtonRow({super.key, required this.buttonCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: 
        Row(
          children: List.generate(buttonCount, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // button functionality here
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/image_$index.png'),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Button $index',
                    style: TextStyle(
                      fontSize: 12,
                      color: primaryTextColor,
                    ),
                  ),
                ],
              ),
            );
          }),
        )
      ),
    );
  }
}