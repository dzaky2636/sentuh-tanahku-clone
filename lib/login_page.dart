import 'package:flutter/material.dart';
import 'settings.dart'; 
import 'widgets/back_button_widget.dart'; 
import 'widgets/custom_elevated_button.dart';
import 'widgets/forgot_password_button.dart';
import 'widgets/divider_with_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(15), child: const BackButtonWidget()),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Login untuk memulai',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 7),
                const Text(
                  'Masukkan email/username & password kamu',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                  labelText: 'Email/Username',
                  hintText: 'Masukkan Email atau Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Masukkan Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
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
          Row(
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
                onPressed: () {
                  // Navigate to register page
                },
                child: const Text(
                  'Daftar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}