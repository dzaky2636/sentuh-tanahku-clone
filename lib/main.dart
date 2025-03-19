import 'package:flutter/material.dart';
import 'widgets/carousel_widget.dart';
import 'widgets/button_row_widget.dart';
import 'widgets/section_title_widget.dart';
import 'widgets/horizontal_card_list_widget.dart';
import 'widgets/layanan_information_buttons_container.dart';
import 'widgets/gradient_container.dart';
import 'widgets/appbar_title_widget.dart';
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
            AppBarTitleWidget(
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
      body: ListView(
        children: [
          CarouselWidget(size: size),
          SizedBox(height: size / 1.5),
          LayananInformationButtonsContainer(
            isLayananActive: isLayananActive,
            onLayananPressed: _handleLayananPressed,
            onInformasiPressed: _handleInformasiPressed,
          ),
          const SizedBox(height: 15),
          GradientContainer(buttonCount: isLayananActive ? 7 : 4),
          const SizedBox(height: 30),
          const SectionTitleWidget(title: 'Laci'),
          const ButtonRowWidget(buttonCount: 3),
          const SizedBox(height: 20),
          const SectionTitleWidget(title: 'Siaran Pers Kementrian'),
          const SizedBox(height: 15),
          const HorizontalCardListWidget(itemCount: 5),
          const SizedBox(height: 20),
          const SectionTitleWidget(title: 'Pengumuman'),
          const SizedBox(height: 15),
          const HorizontalCardListWidget(itemCount: 5),
          const SizedBox(height: 20),
          const SectionTitleWidget(title: 'Ikuti Kanal Video Kami'),
          const SizedBox(height: 15),
          const HorizontalCardListWidget(itemCount: 5),
          const SizedBox(height: 20),
          Center(
            child: Text(
              'App Version: $appVersion',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}