// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_app_clone/util.dart';

class HListItem extends StatelessWidget {
  final int albumIndex;
  final List<Album> albums;
  const HListItem({Key? key, required this.albums, required this.albumIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var album = albums[albumIndex];

    return Container(
      width: 120,
      margin: const EdgeInsets.all(5.0),
      child: Column(children: [
        Container(
          child: AspectRatio(
            aspectRatio: 1,
            child: Image(image: NetworkImage(album.imageURL), fit: BoxFit.fill),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    album.artist,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Album · ${album.name}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withAlpha(150),
                      fontSize: 12,
                    ),
                  )),
            ]),
          ),
        ),
      ]),
    );
  }
}
