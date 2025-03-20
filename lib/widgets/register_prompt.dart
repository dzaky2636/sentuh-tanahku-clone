import 'package:flutter/material.dart';
import '../settings.dart';

import '../daftar_page.dart';

class RegisterPrompt extends StatelessWidget {
  final VoidCallback onPressed;

  const RegisterPrompt({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Belum punya akun? ',
            style: TextStyle(
          color: primaryColor,
          fontSize: 16,
            ),
          ),
          GestureDetector(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DaftarPage()),
                );
              },
            child: Text(
              'Daftar',
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}