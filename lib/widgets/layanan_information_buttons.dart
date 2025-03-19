import 'package:flutter/material.dart';

class LayananInformationButtons extends StatelessWidget {
  const LayananInformationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              // layanan functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 1.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11.0),
              ),
            ),
            child: const Text(
              'Layanan',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              // informasi functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 1.0),
              side: const BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11.0),
              ),
            ),
            child: const Text(
              'Informasi',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}