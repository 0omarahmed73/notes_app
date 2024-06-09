import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();

  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return ListView.builder(
          itemBuilder: (context, index) {
            Random random = Random();
            Random random2 = Random();
            Random random3 = Random();
            int num = random.nextInt(100) + 150;
            int num2 = random2.nextInt(100) + 150;
            int num3 = random3.nextInt(100) + 150;
            return NoteItem(
              background: Color.fromRGBO(num, num2, num3, 1),
              noteModel: notes[index],
            );
          },
          itemCount: notes.length,
        );
      },
    );
  }
}
