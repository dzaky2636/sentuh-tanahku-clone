import 'package:flutter/material.dart';
import 'button_row_widget.dart';

class GradientContainer extends StatelessWidget {
  final int buttonCount;

  const GradientContainer({Key? key, required this.buttonCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Color.fromARGB(255, 246, 237, 242)],
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ButtonRowWidget(buttonCount: buttonCount),
      ),
    );
  }
}