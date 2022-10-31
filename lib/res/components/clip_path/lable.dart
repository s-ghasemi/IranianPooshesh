import 'package:flutter/material.dart';

class Lable extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double radius = 8;
    path
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height - (size.height / 4))
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}