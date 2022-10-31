import 'package:flutter/material.dart';
import 'package:iranian_pooshesh/view/files/my_files_screen.dart';
import 'package:iranian_pooshesh/view/home/home_screen.dart';
import 'package:iranian_pooshesh/view/main/main_screen.dart';
import 'package:iranian_pooshesh/view/send_defects/send_defects_screen.dart';

import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.main:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MainScreen());

      case RoutesName.myFiles:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MyFileScreen());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.sendDefects:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SendDefectsScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
