import 'package:flutter/material.dart';
class TextCustom extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  const TextCustom({super.key, required this.text, required this.color, required this.size, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text , style: TextStyle(color: color , fontSize: size , fontWeight: fontWeight),
    );
  }
}
