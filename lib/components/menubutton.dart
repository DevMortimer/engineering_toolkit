import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  Widget child;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
