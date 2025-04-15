import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
import 'models/card_item.dart';

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
      home: const HomePage(),
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

    final List<Map<String, dynamic>> layananButtons = [
      {
        'text': 'Cari Bidang',
        'icon': CupertinoIcons.doc_person_fill,
        'onTap': () => print('Layanan 1 tapped'),
      },
      {
        'text': 'Cari Berkas',
        'icon': CupertinoIcons.doc_chart_fill,
        'onTap': () => print('Layanan 2 tapped'),
      },
      {
        'text': 'Antrian Online',
        'icon': CupertinoIcons.rectangle_stack_person_crop_fill,
        'onTap': () => print('Layanan 3 tapped'),
      },
      {
        'text': 'Info Layanan',
        'icon': CupertinoIcons.info_circle_fill,
        'onTap': () => print('Layanan 3 tapped'),
      },
      {
        'text': 'Mitra Kerja',
        'icon': CupertinoIcons.person_3_fill,
        'onTap': () => print('Layanan 3 tapped'),
      },
      {
        'text': 'Buku Tamu',
        'icon': CupertinoIcons.doc_on_clipboard_fill,
        'onTap': () => print('Layanan 3 tapped'),
      },
    ];

    final List<Map<String, dynamic>> informasiButtons = [
      {
        'text': 'Kantor Pertanahan',
        'icon': CupertinoIcons.building_2_fill,
        'onTap': () => print('Informasi 1 tapped'),
      },
      {
        'text': 'Bantuan',
        'icon': CupertinoIcons.question_circle_fill,
        'onTap': () => print('Informasi 2 tapped'),
      },
      {
        'text': 'Website',
        'icon': CupertinoIcons.globe,
        'onTap': () => print('Informasi 3 tapped'),
      },
      {
        'text': 'JDIH',
        'icon': CupertinoIcons.book_fill,
        'onTap': () => print('Informasi 3 tapped'),
      },
      {
        'text': 'PPID',
        'icon': CupertinoIcons.person_fill,
        'onTap': () => print('Informasi 3 tapped'),
      },
    ];

    final List<Map<String, dynamic>> laciButtons = [
      {
        'text': 'Sertipikatku',
        'icon': CupertinoIcons.checkmark_seal_fill,
        'onTap': () => print('Laci 1 tapped'),
      },
      {
        'text': 'Aktaku',
        'icon': CupertinoIcons.checkmark_circle_fill,
        'onTap': () => print('Laci 2 tapped'),
      },
      {
        'text': 'Berkasku',
        'icon': CupertinoIcons.archivebox_fill,
        'onTap': () => print('Laci 3 tapped'),
      },
    ];

    final List<CardItem> cardItems = [
      CardItem(
        imageUrl: 'https://picsum.photos/200/100?random=1',
        content: 'Detik.com',
        url: 'https://news.detik.com/',
      ),
      CardItem(
        imageUrl: 'https://akcdn.detik.net.id/community/media/visual/2022/10/12/kemacetan-tol-japek-akibat-perbaikan-jalan_169.jpeg?w=700&q=90',
        content: 'Ada Truk Gangguan, Lalin Tol Bekasi Japek Arah Cikampek Macet',
        url: 'https://news.detik.com/berita/d-7834068/ada-truk-gangguan-lalin-tol-bekasi-japek-arah-cikampek-macet',
      ),
      CardItem(
        imageUrl: 'https://picsum.photos/200/100?random=3',
        content: 'Content for card 3',
        url: 'https://example.com/3',
      ),
      CardItem(
        imageUrl: 'https://picsum.photos/200/100?random=4',
        content: 'Content for card 4',
        url: 'https://example.com/4',
      ),
      CardItem(
        imageUrl: 'https://picsum.photos/200/100?random=5',
        content: 'Content for card 5',
        url: 'https://example.com/5',
      ),
    ];

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
            GradientContainer(
              layananButtons: layananButtons,
              informasiButtons: informasiButtons,
              isLayananActive: isLayananActive,
            ),
            const SizedBox(height: 30),
            const SectionTitle(title: 'Laci'),
            ButtonRow(buttons: laciButtons),
            const SizedBox(height: 20),
            const SectionTitle(title: 'Siaran Pers Kementrian'),
            const SizedBox(height: 15),
            HorizontalCardList(items: cardItems),
            const SizedBox(height: 20),
            const SectionTitle(title: 'Pengumuman'),
            const SizedBox(height: 15),
            HorizontalCardList(items: cardItems),
            const SizedBox(height: 20),
            const SectionTitle(title: 'Ikuti Kanal Video Kami'),
            const SizedBox(height: 15),
            HorizontalCardList(items: cardItems),
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