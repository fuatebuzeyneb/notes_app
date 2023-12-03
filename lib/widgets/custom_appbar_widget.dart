import 'package:flutter/material.dart';

import 'custom_search_icon_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Nonts',
          style: TextStyle(fontSize: 22),
        ),
        Spacer(),
        CustomSearchIconWidget(),
      ],
    );
  }
}
