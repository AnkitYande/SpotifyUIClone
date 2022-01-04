// ignore_for_file: prefer_const_constructors, unnecessary_const, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'recs.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
            Text(
              'Search',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Row(children: const [
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: Icon(Icons.mic_none_outlined)),
              Icon(Icons.camera_alt_outlined)
            ])
          ]),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[800],
                  ),
                  Text(
                    'Artists, songs, or podcasts',
                    style: TextStyle(color: Colors.grey[800], fontSize: 16),
                  ),
                ],
              ),
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
              crossAxisCount: 2, childAspectRatio: 1.7),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image(
                    image: AssetImage('assets/album_1.jpeg'),
                    fit: BoxFit.cover),
              ),
            );
          },
        ),
        // ]),
      ),
    );
  }
}
