import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      style: const TextStyle(fontFamily: 'Roboto'),
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan Password',
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 14),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}