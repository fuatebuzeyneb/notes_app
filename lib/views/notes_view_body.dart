import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar_widget.dart';
import 'package:notes_app/widgets/custom_listview_for_note_card.dart';

class NotesViewBoldy extends StatelessWidget {
  const NotesViewBoldy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBarWidget(),
          Expanded(
            child: CustomListviewForNoteCard(),
          ),
        ],
      ),
    );
  }
}
