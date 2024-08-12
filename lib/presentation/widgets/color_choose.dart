import 'package:flutter/material.dart';

class ColorChoose extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorChoose({super.key, required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Colors.black : Colors.grey,
          width: isSelected ? 2 : 1,
        ),
      ),
    );
  }
}
