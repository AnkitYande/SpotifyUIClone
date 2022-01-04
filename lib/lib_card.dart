// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LibCard extends StatelessWidget {
  const LibCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(children: [
        Image(image: AssetImage('assets/album_1.jpeg')),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Liked Songs",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Playlist · SuperCoolUser69",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white.withAlpha(100)),
              )
            ],
          ),
        )
      ]),
    );
  }
}
