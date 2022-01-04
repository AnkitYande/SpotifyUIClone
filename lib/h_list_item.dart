// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HListItem extends StatelessWidget {
  const HListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(5.0),
      child: Column(children: [
        Image(image: AssetImage('assets/album_1.jpeg'), fit: BoxFit.fill),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Man on the Moon III",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Album · Kid Cudi",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white.withAlpha(100)),
                  )),
            ]),
          ),
        ),
      ]),
    );
  }
}
