import 'package:flutter/material.dart';
import 'layanan_information_button.dart';

class LayananInformationButtonsContainer extends StatelessWidget {
  final bool isLayananActive;
  final VoidCallback onLayananPressed;
  final VoidCallback onInformasiPressed;

  const LayananInformationButtonsContainer({
    super.key,
    required this.isLayananActive,
    required this.onLayananPressed,
    required this.onInformasiPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LayananInformationButton(
            label: 'Layanan',
            isActive: isLayananActive,
            onPressed: onLayananPressed,
          ),
          const SizedBox(width: 10),
          LayananInformationButton(
            label: 'Informasi',
            isActive: !isLayananActive,
            onPressed: onInformasiPressed,
          ),
        ],
      ),
    );
  }
}