// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SBtn extends StatelessWidget {
  final String label;
  const SBtn({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: Size(0, 30),
            primary: Colors.white,
            side: BorderSide(color: Colors.grey.shade500),
            textStyle: TextStyle(fontSize: 12),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          onPressed: () {
            debugPrint('Received click');
          },
          child: Text(label),
        ));
  }
}
