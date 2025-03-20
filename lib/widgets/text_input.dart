import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;

  const TextInput({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(fontFamily: 'Roboto'), 
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
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