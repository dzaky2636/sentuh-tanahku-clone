import 'package:flutter/material.dart';
import 'settings.dart';
import 'widgets/custom_elevated_button.dart';
import 'widgets/text_input.dart';
import 'widgets/password_input.dart';
import 'widgets/page_heading.dart';
import 'widgets/page_heading_subtitle.dart';

class DaftarPage extends StatelessWidget {
  const DaftarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: primaryColor!.withOpacity(0.05), // Set the background color with low opacity
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
                  const PageHeading(text: 'Daftar untuk memulai'),
                  const SizedBox(height: 7),
                  const PageHeadingSubtitle(text: 'Masukkan detail kamu untuk mendaftar'),
                  const SizedBox(height: 30),
                  const TextInput(
                    labelText: 'Nama Lengkap',
                    hintText: 'Masukkan Nama Lengkap',
                  ),
                  const SizedBox(height: 20),
                  const TextInput(
                    labelText: 'Email',
                    hintText: 'Masukkan Email',
                  ),
                  const SizedBox(height: 20),
                  const PasswordInput(
                    labelText: 'Password',
                    hintText: 'Masukkan Password',
                  ),
                  const SizedBox(height: 20),
                  const PasswordInput(
                    labelText: 'Konfirmasi Password',
                    hintText: 'Masukkan Password lagi',
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    onPressed: () {
                      // Register functionality here
                    },
                    label: 'Daftar'
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