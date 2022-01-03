import 'package:flutter/material.dart';
import 'h_list.dart';
import 'recs.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
    );
  }
}
