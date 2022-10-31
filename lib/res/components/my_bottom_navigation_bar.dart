import 'package:flutter/material.dart';

import '../app_ir_pooshesh_icons.dart';
import '../color.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int>? onTap;
  const MyBottomNavigationBar({
    Key? key,
    this.selectedIndex = 0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 56,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFBDBDBD).withOpacity(0.24),
            blurRadius: 8.0,
            offset: const Offset(4, 4),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: AppColors.whiteColor,
      ),
      child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Icon(IRPooshesh.document_text_1),
              ),
              label: "پرونده‌های من",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Icon(IRPooshesh.home),
              ),
              label: "خانه",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Icon(IRPooshesh.document_forward),
              ),
              label: "ارسال نواقص",
            ),
          ]),
    );
  }
}
