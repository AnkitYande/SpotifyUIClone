// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
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
      home: Container(
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
        child: Navigation(),
      ),
    );
  }
}
