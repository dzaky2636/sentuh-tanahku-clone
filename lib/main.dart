import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/carousel_widget.dart';
import 'widgets/button_row_widget.dart';
import 'widgets/section_title_widget.dart';
import 'widgets/horizontal_card_list_widget.dart';
import 'widgets/layanan_information_buttons.dart';
import 'widgets/gradient_container.dart';
import 'widgets/appbar_title_widget.dart';
import 'widgets/logout_button.dart';

void main() {
  runApp(const SentuhTanahku());
}

class SentuhTanahku extends StatelessWidget {
  const SentuhTanahku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sentuh Tanahku',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final double size = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/sentuh_tanahku_logo_withborder.png',
              height: 35,
            ),
            const SizedBox(width: 10),
            const AppBarTitleWidget(
              title: 'Sentuh Tanahku',
              subtitle: 'Kementrian ATR/BPN',
            ),
            Spacer(),
            LogoutButton(
              onPressed: () {
                // logout functionality here
              },
            ),
          ],
        ),
        backgroundColor: Colors.red[900],
      ),
      body: ListView(
        children: [
          CarouselWidget(size: size),
          SizedBox(height: size / 1.5),
          const LayananInformationButtons(),
          const SizedBox(height: 15),
          const GradientContainer(buttonCount: 7),
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
        ],
      ),
    );
  }
}