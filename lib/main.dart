import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme:
              ColorScheme.dark(background: Color.fromRGBO(48, 48, 48, 1))),
      home: NotesView(),
    );
  }
}
