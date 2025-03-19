import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../settings.dart';

class CarouselWidget extends StatelessWidget {
  final double size;

  const CarouselWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: size,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
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
              'https://picsum.photos/200/100?random=${1}',
              'https://picsum.photos/200/100?random=${2}',
              'https://picsum.photos/200/100?random=${3}',
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
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
    );
  }
}