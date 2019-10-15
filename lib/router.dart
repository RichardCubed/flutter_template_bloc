import 'package:BLOC/screens/documents/view.dart';
import 'package:flutter/material.dart';

import 'screens/home/view.dart';
import 'screens/settings/view.dart';

class Routes {
  static const names = [
    "home",
    "documents",
    "settings",
  ];
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "home":
        return MaterialPageRoute(builder: (_) => HomeView());
      case "documents":
        return MaterialPageRoute(builder: (_) => DocumentsView());
      case "settings":
        return MaterialPageRoute(builder: (_) => SettingsView());
      default:
        return MaterialPageRoute(builder: (_) => HomeView());
    }
  }
}
