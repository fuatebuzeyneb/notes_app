import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

class CustomNoteCardWidget extends StatelessWidget {
  const CustomNoteCardWidget({
    super.key,
    required this.colors,
  });
  final Color colors;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colors,
      ),
      height: size.width * 0.5,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'First Note',
                  fontSize: 20,
                ),
                Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
            Column(
              children: [
                CustomTextWidget(
                  text: 'hdkshfsjd1' * 1000,
                  color: Colors.black.withOpacity(0.55),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextWidget(
                  text: '12.11.2023',
                  fontSize: 14,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
