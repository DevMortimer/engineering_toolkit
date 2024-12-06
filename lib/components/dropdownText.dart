import 'package:flutter/material.dart';

class DropdownText extends StatefulWidget {
  DropdownText({
    super.key,
    required this.text,
    required this.child,
    this.hGap = 8,
    this.vGap = 8,
    this.t,
    this.closedIcon,
    this.openIcon,
  });

  final Widget text;
  final Widget child;
  double hGap;
  double vGap;
  TextStyle? t;
  Widget? closedIcon;
  Widget? openIcon;

  @override
  State<DropdownText> createState() => _DropdownTextState();
}

class _DropdownTextState extends State<DropdownText> {
  bool isDown = false;

  @override
  Widget build(BuildContext context) {
    TextStyle t = widget.t == null
        ? TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black)
        : widget.t!;

    return InkWell(
      onTap: () => setState(() {
        isDown = !isDown;
      }),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.text,
              SizedBox(width: widget.hGap),
              isDown
                  ? widget.closedIcon ??
                      const Icon(Icons.arrow_drop_down_rounded)
                  : widget.openIcon ?? const Icon(Icons.arrow_right_rounded)
            ],
          ),
          if (isDown) SizedBox(height: widget.vGap),
          if (isDown) widget.child
        ],
      ),
    );
  }
}
