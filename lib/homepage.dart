// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'h_list.dart';
import 'recs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.history)),
                Icon(Icons.settings_outlined)
              ])
            ]),

            // Suggested Songs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [RecCard(), RecCard(), RecCard()]),
                Column(children: [RecCard(), RecCard(), RecCard()])
              ],
            ),

            //Horrizontal Scrolling Lists
            HList(headding: "Recently Played"),
            HList(headding: "Hip-Hop"),
            HList(headding: "More of what you like"),
            HList(headding: "Uniqulely yours")
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xf0101010),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: 'Your Libary'),
        ],
      ),
    );
  }
}
