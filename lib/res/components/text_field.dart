import 'package:flutter/material.dart';
import '../color.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final IconData suffixIcon;
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        isDense: true,
        suffixIcon: Icon(
          suffixIcon,
          color: AppColors.grayColor,
        ),
        hintText: hintText,
      ),
    );
  }
}
