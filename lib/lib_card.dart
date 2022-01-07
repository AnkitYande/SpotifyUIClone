// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_app_clone/util.dart';

class LibCard extends StatelessWidget {
  final Album album;
  const LibCard({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image(image: NetworkImage(album.imageURL), fit: BoxFit.cover),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                album.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Album · ${album.artist}",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white.withAlpha(150)),
              )
            ],
          ),
        ))
      ]),
    );
  }
}
