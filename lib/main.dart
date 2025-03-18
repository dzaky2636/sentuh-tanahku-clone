import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/carousel_widget.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sentuh Tanahku',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kementrian ATR/BPN',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Spacer(),
            TextButton.icon(
              icon: const Icon(Icons.logout, color: Colors.white),
              label: const Text(
                'Logout',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                // logout functionality here
              },
            ),
          ],
        ),
        backgroundColor: Colors.red[900],
      ),
      body: 
        ListView(
          children: [
            CarouselWidget(size: size),
            SizedBox(height: size / 1.5),
            // after carousel widget
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      // layanan functionality here
                      },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      ),
                      child: 
                        Text(
                        'Layanan',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      )
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                      // layanan functionality here
                      },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      ),
                      child: 
                        Text(
                        'Informasi',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      )
                    )
                  ],
                )
              ),
        ],
      ),
    );
  }
}