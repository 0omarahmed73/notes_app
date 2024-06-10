import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/expanded_custom_button.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // To ensure the dialog height adapts to its children
            children: [
              const SizedBox(height: 20),
              const Text(
                'Are you sure?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ExpandedButton(
                    onTap: () {
                      noteModel.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      Navigator.of(context).pop();
                    },
                    text: 'Confirm',
                  ),
                  const SizedBox(width: 10),
                  ExpandedButton(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    text: 'Cancel',
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
