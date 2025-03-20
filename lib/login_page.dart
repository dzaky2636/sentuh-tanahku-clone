import 'package:flutter/material.dart';
import 'settings.dart';
import 'widgets/custom_elevated_button.dart';
import 'widgets/forgot_password_button.dart';
import 'widgets/divider_with_text.dart';
import 'widgets/text_input.dart'; 
import 'widgets/password_input.dart'; 
import 'widgets/register_prompt.dart';
import 'widgets/page_heading.dart';
import 'widgets/page_heading_subtitle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: primaryColor!.withOpacity(0.05), 
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15), child: const Align(alignment: Alignment.centerLeft, child: BackButton())),
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
                  const PasswordInput(), 
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    onPressed: () {
                      // Login
                    },
                    label: 'Login'
                  ),
                  ForgotPasswordButton(
                    onPressed: () {
                      // Navigate to forget password page
                    },
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
            Spacer(),
            RegisterPrompt(
              onPressed: () {
                // Navigate to register page
              },
            ),
          ],
        ),
      ),
    );
  }
}