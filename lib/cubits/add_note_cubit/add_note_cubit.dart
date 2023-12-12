import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffB71C1C);
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      note.color = color.value;
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(
        AddNoteFailure(errorMassage: e.toString()),
      );
    }
  }
}
