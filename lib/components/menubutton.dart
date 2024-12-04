import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton({
    super.key,
    required this.child,
    required this.label,
    required this.onPressed,
  });

  Widget child;
  String label;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var w = (MediaQuery.of(context).size.width - 10 * 4) / 4;

    return Column(
      children: [
        SizedBox(
          width: w,
          height: w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFFFFFFFF),
              elevation: 8,
              shadowColor: Theme.of(context).brightness == Brightness.light
                  ? Colors.blue.withAlpha(150)
                  : Colors.blueGrey.withAlpha(150),
            ),
            onPressed: onPressed,
            child: child,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Theme.of(context).brightness != Brightness.dark
                ? const Color(0xFF000000)
                : const Color(0xFFFFFFFF),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
