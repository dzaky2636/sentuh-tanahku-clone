import 'package:flutter/material.dart';
import 'settings.dart';
import 'widgets/custom_elevated_button.dart';
import 'widgets/forgot_password_button.dart';
import 'widgets/divider_with_text.dart';
import 'widgets/text_input.dart'; 
import 'widgets/password_input.dart'; 
import 'widgets/account_prompt.dart'; 
import 'widgets/page_heading.dart';
import 'widgets/page_heading_subtitle.dart';
import 'daftar_page.dart';
import 'forget_password_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
        color: backgroundColor,
        ),
        child: Column(
        children: [
          Padding(
          padding: EdgeInsets.all(15), 
          child: Align(alignment: Alignment.centerLeft, child: BackButton())
          ),
          Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            const PageHeading(text: 'Login untuk memulai'), 
            const SizedBox(height: 7),
            const PageHeadingSubtitle(text: 'Masukkan email/username & password kamu'),
            const SizedBox(height: 30),
            const TextInput(
              labelText: 'Email/Username',
              hintText: 'Masukkan Email atau Username',
            ),
            const SizedBox(height: 20),
            const PasswordInput(
              labelText: 'Password',
              hintText: 'Masukkan Password',
            ), 
            ForgotPasswordButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ForgetPasswordPage()),
              );
              },
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
              onPressed: () {
              // Login
              },
              label: 'Login'
            ),
            const SizedBox(height: 20),
            const DividerWithText(text: 'atau'),
            const SizedBox(height: 20),
            CustomElevatedButton(
              onPressed: () {
              // Login with Identitas Kependudukan Digital functionality here
              },
              label: 'Login dengan Alternatif',
              iconPath: 'assets/images/sentuh_tanahku_logo_withborder.png',
            ),
            ],
          ),
          ),
          const SizedBox(height: 20),
          AccountPrompt(
          promptText: 'Belum punya akun? ',
          actionText: 'Daftar',
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DaftarPage()),
            );
          },
          ),
        ],
        ),
      ),
      ),
    );
  }
}