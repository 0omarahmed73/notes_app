import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
          child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
                )),
              ),
      ),
    );
  }
}
