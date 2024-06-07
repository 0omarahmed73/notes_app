import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Notes',
          iconData: Icons.search,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: NotesListView(),
          ),
        )
      ],
    );
  }
}
