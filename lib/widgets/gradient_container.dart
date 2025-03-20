import 'package:flutter/material.dart';
import 'button_row.dart';
import '../settings.dart';

class GradientContainer extends StatelessWidget {
  final int buttonCount;

  const GradientContainer({super.key, required this.buttonCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white.withOpacity(0.2), primaryColor!.withOpacity(0.1)],
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ButtonRow(buttonCount: buttonCount),
      ),
    );
  }
}