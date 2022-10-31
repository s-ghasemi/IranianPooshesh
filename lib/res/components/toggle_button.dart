import 'package:flutter/material.dart';

class ToggleButtonItem extends StatefulWidget {
  final List<bool> isSelectedList;
  final String title;
  final int index;
  final GestureTapCallback onTap;
  const ToggleButtonItem({
    Key? key,
    required this.index,
    required this.title,
    required this.isSelectedList,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ToggleButtonItem> createState() => _ToggleButtonItemState();
}

class _ToggleButtonItemState extends State<ToggleButtonItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: widget.isSelectedList[widget.index]
                ? Colors.white
                : const Color(0xff1C4870),
          ),
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: widget.isSelectedList[widget.index]
                      ? const Color(0xff1C4870)
                      : Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
