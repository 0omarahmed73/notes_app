import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: 'Edit Note',
          iconData: Icons.check,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
          child: Column(
            children: [
              CustomTextField(hint: 'title'),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: 'content',
                maxLines: 5,
              ),
            ],
          ),
        )
      ],
    );
  }
}