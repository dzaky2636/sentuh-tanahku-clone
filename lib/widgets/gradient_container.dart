import 'package:flutter/material.dart';
import 'button_row_widget.dart';
import '../settings.dart';

class GradientContainer extends StatelessWidget {
  final int buttonCount;

  const GradientContainer({Key? key, required this.buttonCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white.withOpacity(0.2), primaryColor!.withOpacity(0.2)],
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ButtonRowWidget(buttonCount: buttonCount),
      ),
    );
  }
}