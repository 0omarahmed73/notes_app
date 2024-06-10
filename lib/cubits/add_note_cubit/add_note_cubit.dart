import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color.fromARGB(255, 17, 202, 54);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      Box<NoteModel> notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      await Future.delayed(Duration(seconds: 2)); // Added delay here
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
