import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_add_button.dart';

import 'custom_appbar_icon_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key, required this.text, this.onTap});
  final String text;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 22),
        ),
        const Spacer(),
        Row(
          children: [
            CustomAppBarIconWidget(
              icon: text == 'Notes' ? Icons.add : Icons.close,
              onTap: () {
                text == 'Notes'
                    ? showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                        ),
                        context: context,
                        builder: (context) {
                          return const CustomAddButton();
                        })
                    : Navigator.pop(context);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            CustomAppBarIconWidget(
                icon: text == 'Notes' ? Icons.search : Icons.check,
                onTap: onTap),
          ],
        )
      ],
    );
  }
}
