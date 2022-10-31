import 'package:flutter/material.dart';

import '../color.dart';

class MyOutlinedButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const MyOutlinedButton({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: const BorderSide(
          width: 2.0,
          color: AppColors.primaryColor,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4!.copyWith(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
