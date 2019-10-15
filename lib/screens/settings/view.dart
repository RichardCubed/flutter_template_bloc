import 'dart:core';
import 'package:flutter/material.dart';

import 'package:BLOC/components/c3_bottom_navigation_bar.dart';

/*
 *  An empty settings screen
 */
class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      bottomNavigationBar: C3BottomNavigationBar(2),
    );
  }
}
