import 'package:flutter/material.dart';
import '../models/card_item.dart';
import '../webview_page.dart';

class HorizontalCardList extends StatelessWidget {
  final List<CardItem> items;

  const HorizontalCardList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double cardWidth = 200.0;
    const double cardHeight = 191.0;
    const double imageHeight = 120.0;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((item) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewPage(url: item.url),
                  ),
                );
              },
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                  width: cardWidth,
                  height: cardHeight, 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        child: Image.network(
                          item.imageUrl,
                          height: imageHeight, 
                          width: cardWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          item.content,
                          style: const TextStyle(
                            fontSize: 11,
                          ),
                          maxLines: 3, 
                          overflow: TextOverflow.ellipsis, 
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}