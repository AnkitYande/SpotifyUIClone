// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'home.dart';
import 'lib.dart';
import 'search.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> _pages = [
    Home(),
    Search(),
    Lib(),
  ];
  int _selectedIndex = 0;
  void _navigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(0.0),
      //   child: AppBar(
      //     elevation: 0,
      //     backgroundColor: Colors.transparent,
      //     automaticallyImplyLeading: false, // hides leading widget
      //   ),
      // ),
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
