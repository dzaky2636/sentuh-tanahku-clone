import 'package:flutter/material.dart';
import '../settings.dart';

class ButtonRow extends StatelessWidget {
  final List<Map<String, dynamic>>
  buttons;

  const ButtonRow({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              buttons.map((button) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: button['onTap'],
                        child: Container(
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [primaryColor ?? Colors.red, buttonHighlightColor ?? Colors.purple],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                            ),
                          ],
                          ),
                          child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 25,
                          child: Icon(
                            button['icon'],
                            size: 25,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),

                      // text is allowed to overflow, if overflow, it will be moved down
                      Container(
                        constraints: BoxConstraints(maxWidth: 50, minHeight: 23),
                        child: Text(
                          button['text'],
                          style: TextStyle(
                            fontSize: 8,
                            color: primaryTextColor,
                          ),
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
