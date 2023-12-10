import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/views/notes_view_body.dart';
import 'package:notes_app/views/widgets/custom_add_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              context: context,
              builder: (context) {
                return const CustomAddButton();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
