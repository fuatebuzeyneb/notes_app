import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBarWidget()
          ],
        ),
      ),
    );
  }
}
