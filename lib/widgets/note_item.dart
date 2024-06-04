import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 34,
        bottom: 34,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Color(0xffffcd7a),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16.0, top: 16),
              child: Text(
                'Build your career with Tharwat Samy',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),
              ),
            ),
            trailing: Transform.translate(
              offset: Offset(0, -30),
              child: IconButton(
                icon: Icon(
                  Icons.delete,
                  size: 35,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '0${DateTime.now().day}/0${DateTime.now().month}/${DateTime.now().year}',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
