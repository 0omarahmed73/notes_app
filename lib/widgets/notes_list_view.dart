import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Random random = Random();
        Random random2 = Random();
        Random random3 = Random();
        int num = random.nextInt(100) + 150;
        int num2 = random2.nextInt(100) + 150;
        int num3 = random3.nextInt(100) + 150;
        return NoteItem(background: Color.fromRGBO(num, num2, num3, 1));
      },
      itemCount: 10,
    );
  }
}
