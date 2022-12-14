import 'package:flutter/material.dart';

import 'package:iranian_pooshesh/view/files/my_files_screen.dart';
import 'package:iranian_pooshesh/view/home/home_screen.dart';
import 'package:iranian_pooshesh/view/send_defects/send_defects_screen.dart';

import '../../res/app_ir_pooshesh_icons.dart';
import '../../res/color.dart';
import '../../res/components/appBar.dart';
import '../../res/components/bottom_navigation_bar.dart';
import '../../res/components/clip_path/hexagon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _bodyItems = const [
    MyFileScreen(),
    HomeScreen(),
    SendDefectsScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: const Drawer(),
      appBar: MyAppBar(
        title: "پرونده‌های من",
        onPressed: () => _scaffoldKey.currentState!.openDrawer(),
      ),
      body: _bodyItems.elementAt(_selectedIndex),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}
