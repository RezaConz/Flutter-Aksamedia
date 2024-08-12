import 'package:flutter/material.dart';

Widget buildDot(int index, BuildContext context, int currentPage) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 200),
    margin: const EdgeInsets.only(right: 5),
    height: 5,
    width: currentPage == index ? 20 : 5,
    decoration: BoxDecoration(
      color: currentPage == index ? Colors.white : Colors.white,
      borderRadius: BorderRadius.circular(4),
    ),
  );
}
