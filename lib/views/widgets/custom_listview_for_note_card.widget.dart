import 'package:flutter/material.dart';

import 'custom_note_card_widget.dart';

class CustomListviewForNoteCardWidget extends StatelessWidget {
  const CustomListviewForNoteCardWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 15,
          itemBuilder: (context, index) {
            final colors = [
              Colors.red,
              Colors.blue,
              Colors.green,
              Colors.orange,
              Colors.purple,
              Colors.teal,
              Colors.pink,
              Colors.indigo,
              Colors.amber,
              Colors.cyan,
              Colors.lime,
              Colors.deepOrange,
              Colors.deepPurple,
              Colors.yellow,
              Colors.lightBlue,
            ];

            final colorIndex = index % colors.length;
            final color = colors[colorIndex];
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CustomNoteCardWidget(
                colors: color,
              ),
            );
          }),
    );
  }
}
