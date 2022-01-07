// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:spotify_app_clone/util.dart';

import 'home.dart';
import 'lib.dart';
import 'search.dart';

class Navigation extends StatefulWidget {
  final List<Album> albums;
  const Navigation({Key? key, required this.albums}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  void _navigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      Home(albums: widget.albums),
      Search(),
      Lib(albums: widget.albums),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xf0101010),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: _navigation,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: 'Your Library'),
        ],
      ),
    );
  }
}
