import 'package:flutter/material.dart';

import '../color.dart';

class MyCircularProgress extends StatelessWidget {
  const MyCircularProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 25,
        width: 25,
        child: CircularProgressIndicator(
          strokeWidth: 3,
          backgroundColor: AppColors.grayColor,
          valueColor: AlwaysStoppedAnimation<Color>(
            AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
