import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar_widget.dart';
import 'package:notes_app/views/widgets/custom_color_item_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class EditView extends StatefulWidget {
  const EditView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBarWidget(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              text: 'Edit Note',
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextFieldWidget(
              onChanged: (value) {
                title = value;
              },
              lable: 'Title',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldWidget(
              onChanged: (value) {
                subTitle = value;
              },
              lable: 'Contant',
              maxLine: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            EditNoteColorsListe(
              note: widget.note,
            )
          ],
        ),
      ),
    );
  }
}

class EditNoteColorsListe extends StatefulWidget {
  const EditNoteColorsListe({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsListe> createState() => _EditNoteColorsListeState();
}

class _EditNoteColorsListeState extends State<EditNoteColorsListe> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: CustomColorItemWidget(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
