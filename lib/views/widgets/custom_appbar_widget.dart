import 'package:flutter/material.dart';

import 'custom_appbar_icon_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 22),
        ),
        const Spacer(),
        CustomAppBarIconWidget(
          icon: text == 'Notes' ? Icons.search : Icons.check,
        ),
      ],
    );
  }
}
