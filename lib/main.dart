import 'package:flutter/material.dart';
import 'widgets/carousel.dart';
import 'widgets/button_row.dart';
import 'widgets/section_title.dart';
import 'widgets/horizontal_card_list.dart';
import 'widgets/layanan_information_buttons_container.dart';
import 'widgets/gradient_container.dart';
import 'widgets/appbar_title.dart';
import 'widgets/login_button.dart';
import 'settings.dart';

import 'login_page.dart';

void main() {
  runApp(const SentuhTanahku());
}

class SentuhTanahku extends StatelessWidget {
  const SentuhTanahku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const LoginPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isLayananActive = true;

  void _handleLayananPressed() {
    setState(() {
      isLayananActive = true;
    });
  }

  void _handleInformasiPressed() {
    setState(() {
      isLayananActive = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double size = 150.0;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/sentuh_tanahku_logo_withborder.png',
              height: 35,
            ),
            const SizedBox(width: 10),
            AppBarTitle(
              title: appTitle,
              subtitle: appSubtitle,
            ),
            Spacer(),
            LoginButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: primaryColor!.withOpacity(0.05), // Set the background color with low opacity
        ),
        child: ListView(
          children: [
            Carousel(size: size),
            SizedBox(height: size / 1.5),
            LayananInformationButtonsContainer(
              isLayananActive: isLayananActive,
              onLayananPressed: _handleLayananPressed,
              onInformasiPressed: _handleInformasiPressed,
            ),
            const SizedBox(height: 15),
            GradientContainer(buttonCount: isLayananActive ? 7 : 4),
            const SizedBox(height: 30),
            const SectionTitle(title: 'Laci'),
            const ButtonRow(buttonCount: 3),
            const SizedBox(height: 20),
            const SectionTitle(title: 'Siaran Pers Kementrian'),
            const SizedBox(height: 15),
            const HorizontalCardList(itemCount: 5),
            const SizedBox(height: 20),
            const SectionTitle(title: 'Pengumuman'),
            const SizedBox(height: 15),
            const HorizontalCardList(itemCount: 5),
            const SizedBox(height: 20),
            const SectionTitle(title: 'Ikuti Kanal Video Kami'),
            const SizedBox(height: 15),
            const HorizontalCardList(itemCount: 5),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20), 
              child: Center(
                child: Text(
                  'App Version: $appVersion',
                    style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}