import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_ir_pooshesh_icons.dart';
import '../color.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onPressed;
  const MyAppBar({
    Key? key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 86,
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(right: 16, top: 16),
        child: IconButton(
          icon: const Icon(
            IRPooshesh.menu,
            size: 15,
          ),
          onPressed: onPressed,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(title ?? ""),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(86);
}
