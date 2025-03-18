import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
              label: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              icon: const Icon(Icons.logout, color: Colors.white),
              iconAlignment: IconAlignment.end,
              onPressed: () {
                // logout functionality here
              },
            ),
          ],
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: size,
          decoration: BoxDecoration(
            color: Colors.red[900],
            borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
            ),
          ) 
        ),
        Positioned(
            bottom: -size * 0.45,
            left: 0,
            right: 0,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                aspectRatio: 16 / 8,
              ),
              items: [
                'https://picsum.photos/200/300',
                'https://picsum.photos/200/300',
                'https://picsum.photos/200/300',
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0), // Add margin to create space between items
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(i, fit: BoxFit.cover),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}