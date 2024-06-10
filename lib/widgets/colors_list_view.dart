import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  final List<Color> colorsList = [
    Color.fromARGB(255, 17, 202, 54),
    Colors.deepPurpleAccent,
    Colors.teal.shade400,
    Colors.red.shade400,
    const Color.fromARGB(255, 146, 179, 196)
  ];
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
                  colorsList[curindex];
              setState(() {});
            },
            child: ColorItem(
              color: colorsList[index],
              isActive: curindex == index ? true : false,
            ),
          ),
          itemCount: colorsList.length,
        ),
      ),
    );
  }
}
