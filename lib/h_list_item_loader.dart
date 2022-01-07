// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_app_clone/util.dart';
import 'h_list_item.dart';

class HListItemLoader extends StatefulWidget {
  const HListItemLoader({Key? key}) : super(key: key);

  @override
  State<HListItemLoader> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HListItemLoader> {
  final Future<List<String>> _myNetworkData = getAlbum();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: _myNetworkData,
      builder: (BuildContext context, AsyncSnapshot<List<String>> res) {
        List<Widget> children;
        if (res.connectionState == ConnectionState.done && res.hasData) {
          return HListItem(
            artist: res.data![0],
            album: res.data![1],
            imageURL: res.data![2],
          );
        } else if (res.connectionState == ConnectionState.done &&
            res.hasError) {
          return HListItem(
            artist: res.error.toString(),
            album: res.error.toString(),
            imageURL:
                "https://img.discogs.com/11VLdvBtLGhZRJzGfYhIuFG_nN0=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-12119420-1565438799-3913.jpeg.jpg",
          );
        } else {
          return HListItem(
            artist: "loading...",
            album: "loading...",
            imageURL:
                "https://images3.pixlis.com/background-image-checkers-chequered-checkered-squares-seamless-tileable-jaguar-bokara-grey-2364an.png",
          );
        }
      },
    );
  }
}
