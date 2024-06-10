import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, required this.colors});
  final List<Color> colors;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int curindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 76,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              curindex = index;
              BlocProvider.of<AddNoteCubit>(context).color =
                  widget.colors[curindex];
              setState(() {});
            },
            child: ColorItem(
              color: widget.colors[index],
              isActive: curindex == index ? true : false,
            ),
          ),
          itemCount: widget.colors.length,
        ),
      ),
    );
  }
}
