// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
  final icon;
  final String emojiName;
  final onPressed;

  const Emojis({
    super.key,
    required this.icon,
    required this.emojiName,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(icon: icon, iconSize: 10, onPressed: () {}),
        SizedBox(
          height: 8,
        ),
        Text(
          emojiName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
