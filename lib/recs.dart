// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_app_clone/util.dart';

class RecCard extends StatelessWidget {
  final int index;
  final List<Album> albums;
  const RecCard({
    Key? key,
    required this.albums,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var album = albums[index];
    return Container(
      width: 170,
      height: 60,
      margin: const EdgeInsets.all(5.0),
      // margin: const EdgeInsets.all(10)
      decoration: BoxDecoration(
          color: Colors.grey.shade600.withAlpha(50),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: AspectRatio(
              aspectRatio: 1,
              child:
                  Image(image: NetworkImage(album.imageURL), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(album.name,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ),
          )
        ]),
      ),
    );
  }
}
