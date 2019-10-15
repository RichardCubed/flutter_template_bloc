import 'dart:core';
import 'package:flutter/material.dart';

import 'package:BLOC/router.dart';

class C3BottomNavigationBar extends StatelessWidget {
  final int _currentIndex;

  C3BottomNavigationBar(this._currentIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (int index) {
          Navigator.pushReplacementNamed(context, Routes.names[index]);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_portrait),
            title: Text('Documents'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _currentIndex);
  }
}
