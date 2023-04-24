import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final double size;
  final IconData icon;
  const IconButtons({
    super.key,
    required this.icon,
    required this.size,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: size,
          color: color,
        ));
  }
}
