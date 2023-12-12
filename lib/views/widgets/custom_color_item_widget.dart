import 'package:flutter/material.dart';

class CustomColorItemWidget extends StatelessWidget {
  const CustomColorItemWidget({
    super.key,
    required this.isActive,
    required this.color,
  });
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0), //or 15.0
      child: Container(
        height: 35.0,
        width: 35.0,
        color: color,
        child: isActive == true
            ? const Icon(
                Icons.check,
                color: Colors.black,
              )
            : null,
      ),
    );
  }
}
