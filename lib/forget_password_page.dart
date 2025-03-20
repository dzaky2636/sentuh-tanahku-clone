import 'package:flutter/material.dart';
import 'settings.dart';
import 'widgets/custom_elevated_button.dart';
import 'widgets/text_input.dart';
import 'widgets/page_heading.dart';
import 'widgets/page_heading_subtitle.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: primaryColor!.withOpacity(0.05),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const PageHeading(text: 'Lupa Password'),
                  const SizedBox(height: 7),
                  const PageHeadingSubtitle(text: 'Masukkan email kamu untuk reset password'),
                  const SizedBox(height: 30),
                  const TextInput(
                    labelText: 'Email',
                    hintText: 'Masukkan Email',
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    onPressed: () {
                      // Reset password functionality here
                    },
                    label: 'Reset Password'
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}