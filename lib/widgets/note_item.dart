import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:date_format/date_format.dart';

class NoteItem extends StatelessWidget {
  const NoteItem(
      {super.key, required this.background, required this.noteModel});
  final Color background;
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditNoteView()));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(
          top: 34,
          bottom: 34,
          left: 16,
        ),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 16.0, top: 16),
                child: Text(
                  noteModel.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 18),
                ),
              ),
              trailing: Transform.translate(
                offset: const Offset(0, -30),
                child: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    size: 35,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    noteModel.data,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
