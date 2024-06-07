import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines});
  final String hint;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimary,
      decoration: InputDecoration(
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(color: kPrimary),
          hintText: hint,
          
          hintStyle: TextStyle(color: kPrimary)),
      maxLines: maxLines ?? 1,
      
    );
  }

  OutlineInputBorder buildBorder({Color? color}) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white));
}
