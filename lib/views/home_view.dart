import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(0.8),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const NotesViewBoldy(),
    );
  }
}
