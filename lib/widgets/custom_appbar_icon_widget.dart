import 'package:flutter/material.dart';

class CustomAppBarIconWidget extends StatelessWidget {
  const CustomAppBarIconWidget({
    super.key,
    required this.icon,
  });
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.withOpacity(0.1)),
      child: icon,
    );
  }
}
