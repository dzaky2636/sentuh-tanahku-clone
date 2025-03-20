import 'package:flutter/material.dart';

class RegisterPrompt extends StatelessWidget {
  final VoidCallback onPressed;

  const RegisterPrompt({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Belum punya akun? ',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text(
            'Daftar',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}