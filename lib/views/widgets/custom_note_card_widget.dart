import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_view.dart';

import 'custom_text_widget.dart';

class CustomNoteCardWidget extends StatelessWidget {
  const CustomNoteCardWidget({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditView(note: note);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(note.color),
        ),
        height: size.width * 0.5,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    text: note.title,
                    fontSize: 20,
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextWidget(
                    text: note.subTitle,
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.55),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: note.date,
                    fontSize: 14,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
