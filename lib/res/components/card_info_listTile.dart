import 'package:flutter/material.dart';

class CardInfoListTile extends StatelessWidget {
  final String title;
  final String? value;
  final IconData? prefixIcon;
  final bool isZeroPadding;

  const CardInfoListTile({
    Key? key,
    required this.title,
    this.value,
    this.prefixIcon,
    this.isZeroPadding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          isZeroPadding ? EdgeInsets.zero : const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                prefixIcon ?? Icons.circle,
                size: prefixIcon == null ? 8 : 18,
                color: const Color(0xFFB7B7B7),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
          Flexible(
            child: Text(
              value ?? "",
              overflow: TextOverflow.visible,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      ),
    );
  }
}
