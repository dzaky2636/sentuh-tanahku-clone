import 'package:flutter/material.dart';
import 'button_row.dart';
import '../settings.dart';

class GradientContainer extends StatelessWidget {
  final List<Map<String, dynamic>> layananButtons; 
  final List<Map<String, dynamic>> informasiButtons; 
  final bool isLayananActive;

  const GradientContainer({
    super.key,
    required this.layananButtons,
    required this.informasiButtons,
    required this.isLayananActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white.withOpacity(0.1), primaryColor!.withOpacity(0.1)],
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ButtonRow(
          buttons: isLayananActive ? layananButtons : informasiButtons,
        ),
      ),
    );
  }
}