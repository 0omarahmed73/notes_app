import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines, this.onSave});
  final String hint;
  final int? maxLines;
  final Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
      },
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
