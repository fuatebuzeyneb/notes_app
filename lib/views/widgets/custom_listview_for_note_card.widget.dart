import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_note_card_widget.dart';

class CustomListviewForNoteCardWidget extends StatelessWidget {
  const CustomListviewForNoteCardWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                // final colors = [
                //   Colors.red,
                //   Colors.blue,
                //   Colors.green,
                //   Colors.orange,
                //   Colors.purple,
                //   Colors.teal,
                //   Colors.pink,
                //   Colors.indigo,
                //   Colors.amber,
                //   Colors.cyan,
                //   Colors.lime,
                //   Colors.deepOrange,
                //   Colors.deepPurple,
                //   Colors.yellow,
                //   Colors.lightBlue,
                // ];

                // final colorIndex = index % colors.length;
                // final color = colors[colorIndex];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CustomNoteCardWidget(
                    colors: Colors.pink,
                    note: notes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
