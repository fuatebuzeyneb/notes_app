import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
      required this.text,
      this.fontSize = 12,
      this.color = Colors.black});
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 6, // Set the maximum number of lines to be displayed
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: fontSize, color: color, fontWeight: FontWeight.bold),
    );
  }
}
