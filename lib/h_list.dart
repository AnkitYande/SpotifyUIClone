// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_app_clone/h_list_item.dart';

import 'util.dart';

class HList extends StatelessWidget {
  final String headding;
  final int row;
  final List<Album> albums;
  const HList(
      {Key? key,
      required this.albums,
      required this.headding,
      required this.row})
      : super(key: key);
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
              HListItem(albums: albums, albumIndex: row * 6 + 0),
              HListItem(albums: albums, albumIndex: row * 6 + 1),
              HListItem(albums: albums, albumIndex: row * 6 + 2),
              HListItem(albums: albums, albumIndex: row * 6 + 3),
              HListItem(albums: albums, albumIndex: row * 6 + 4),
              HListItem(albums: albums, albumIndex: row * 6 + 5)
            ],
          ),
        ),
      ],
    );
  }
}
