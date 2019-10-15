import 'dart:core';
import 'package:flutter/material.dart';

class C3ListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  C3ListTile(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      title: Text(title),
    );
  }
}
