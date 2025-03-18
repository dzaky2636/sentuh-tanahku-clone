import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
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
            ],
          ),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Sentuh Tanahku',
            ),
          ],
        ),
      ),
    );
  }
}