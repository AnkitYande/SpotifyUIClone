// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_app_clone/util.dart';

class HListItem extends StatelessWidget {
  final String imageURL;
  final String artist;
  final String album;
  const HListItem(
      {Key? key,
      required this.imageURL,
      required this.artist,
      required this.album})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(5.0),
      child: Column(children: [
        Container(
          child: AspectRatio(
              aspectRatio: 1,
              child: Image(image: NetworkImage(imageURL), fit: BoxFit.fill)),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    artist,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Album · ${album}",
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

// class HListItem extends StatelessWidget {
//   const HListItem({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<String>>(
//         future: getAlbum(),
//         builder: (context, AsyncRes<List<String>> res) {
//           if (res.connectionState == ConnectionState.done &&
//               res.hasData &&
//               res.data != null) {
//             return Container(
//               width: 120,
//               margin: const EdgeInsets.all(5.0),
//               child: Column(children: [
//                 Image(image: NetworkImage(res.data![2]), fit: BoxFit.fill),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(vertical: 5),
//                     child: Column(children: [
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             res.data![0],
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(fontWeight: FontWeight.w600),
//                           )),
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             "Album · ${res.data![1]}",
//                             overflow: TextOverflow.ellipsis,
//                             style:
//                                 TextStyle(color: Colors.white.withAlpha(100)),
//                           )),
//                     ]),
//                   ),
//                 ),
//               ]),
//             );
//           } else {
//             return Text("loading");
//           }
//         });
//   }
// }
