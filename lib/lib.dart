// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_app_clone/util.dart';
import './lib_card.dart';
import './second_btn.dart';

class Lib extends StatelessWidget {
  final List<Album> albums;
  const Lib({Key? key, required this.albums}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xff101010),
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        // automaticallyImplyLeading: false, // hides leading widget
        title: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Container(
                width: 35.0,
                height: 35.0,
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/AY.jpg'),
                  ),
                ),
              ),
              Text(
                'Your Library',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ]),
            Row(children: const [
              Padding(
                  padding: const EdgeInsets.all(20), child: Icon(Icons.search)),
              Icon(Icons.add)
            ])
          ]),
          Container(
            height: 32.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SBtn(label: "Playlists"),
                SBtn(label: "Artists"),
                SBtn(label: "Albums"),
                SBtn(label: "Podcasts & Shows"),
                SBtn(label: "Downloaded"),
              ],
            ),
          ),
        ]),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        // child: Column(children: [
        //   Text("hello"),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 4),
          itemBuilder: (context, index) {
            return LibCard(album: albums[index]);
          },
        ),
      ),
    );
  }
}
