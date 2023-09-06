import 'package:flutter/widgets.dart';
import 'package:practica1/screens/dashboard_screen.dart';
import 'package:practica1/screens/all_screen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/dash': (BuildContext context) => const DashboardScreen(),
    '/item': (BuildContext context) => ItemScreen(),
  };
}
