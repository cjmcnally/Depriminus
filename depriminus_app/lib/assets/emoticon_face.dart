// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({
    super.key,
    required this.emoticonFace,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple[600],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: Center(
        child: Text(
          emoticonFace,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
