// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:spotify_app_clone/util.dart';
import 'navigation.dart';
import 'dart:convert';

Future<void> main() async {
  Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.white, backgroundColor: Colors.white)),
      home: FutureBuilder<List<Album>>(
        future: loadAlbums(),
        builder: (BuildContext context, AsyncSnapshot<List<Album>> res) {
          if (res.connectionState == ConnectionState.done && res.hasData) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0, 0.25],
                  colors: [
                    Color(0xff773030),
                    Color(0xff101010),
                  ],
                ),
              ),
              child: Navigation(albums: res.data ?? []),
            );
          } else if (res.connectionState == ConnectionState.done &&
              res.hasError) {
            return Center(child: Text("${res.error}"));
          } else {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Image(image: AssetImage("assets/spotify_logo.png")),
              ),
            );
          }
        },
      ),
    );
  }
}
