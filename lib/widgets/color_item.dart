import 'package:flutter/material.dart';

class ColorItem extends StatefulWidget {
  const ColorItem({super.key, required this.color, this.isActive = false});
  final Color color;
  final bool isActive;

  @override
  State<ColorItem> createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        backgroundColor:
            widget.isActive ? widget.color.withOpacity(1) : widget.color.withOpacity(0.5),
        radius: 32,
      ),
    );
  }
}
