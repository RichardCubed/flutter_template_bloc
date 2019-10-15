import 'dart:core';
import 'package:flutter/material.dart';

import 'package:BLOC/components/c3_bottom_navigation_bar.dart';

/*
 *  An empty home screen
 */
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      bottomNavigationBar: C3BottomNavigationBar(0),
    );
  }
}
