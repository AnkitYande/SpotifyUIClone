// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'h_list_item.dart';

class HList extends StatelessWidget {
  final String headding;
  const HList({Key? key, required this.headding}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              headding,
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
        ),
        Container(
          height: 175.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              HListItem(),
              HListItem(),
              HListItem(),
              HListItem(),
              HListItem(),
              HListItem()
            ],
          ),
        ),
      ],
    );
  }
}
