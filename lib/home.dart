// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'h_list.dart';
import 'recs.dart';
import 'util.dart';

class Home extends StatelessWidget {
  final List<Album> albums;
  const Home({Key? key, required this.albums}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false, // hides leading widget
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 100),
          child: Column(children: [
            //Headder
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Good afternoon',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Row(children: const [
                Icon(Icons.notifications_outlined),
                Padding(
                    padding: EdgeInsets.all(20), child: Icon(Icons.history)),
                Icon(Icons.settings_outlined)
              ])
            ]),

            // Suggested Songs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  RecCard(albums: albums, index: 44),
                  RecCard(albums: albums, index: 45),
                  RecCard(albums: albums, index: 46)
                ]),
                Column(children: [
                  RecCard(albums: albums, index: 47),
                  RecCard(albums: albums, index: 48),
                  RecCard(albums: albums, index: 49)
                ])
              ],
            ),

            //Horrizontal Scrolling Lists
            HList(albums: albums, row: 0, headding: "Fresh new music"),
            HList(albums: albums, row: 1, headding: "Recently Played"),
            HList(albums: albums, row: 2, headding: "Hip-Hop"),
            HList(albums: albums, row: 3, headding: "More of what you like"),
            HList(albums: albums, row: 4, headding: "Uniqulely yours"),
          ]),
        ),
      ),
    );
  }
}
